#include <types.h>
#include <kern/errno.h>
#include <kern/unistd.h>
#include <kern/wait.h>
#include <lib.h>
#include <syscall.h>
#include <current.h>
#include <proc.h>
#include <thread.h>
#include <addrspace.h>
#include <copyinout.h>


#include "opt-A2.h"
#include <synch.h>
#include <array.h>
#include <mips/trapframe.h>



  /* this implementation of sys__exit does not do anything with the exit code */
  /* this needs to be fixed to get exit() and waitpid() working properly */


//#if OPT_A2
// struct relative {
//   pid_t ppid;
//   int pisrun;
//   pid_t cpid;
//   int cisrun;
//   int exitcode;
// };


//#endif


//ppid;
//pisrun;
//cpid;
//cisrun;
//exitcode;

void freeall(int i){//the remove the i element of 5 arrays
  pid_t* tempppid = (pid_t*) array_get(ppid,i);
  pid_t* temppisrun = (pid_t*) array_get(pisrun,i);
  pid_t* tempcpid = (pid_t*) array_get(cpid,i);
  pid_t* tempcisrun = (pid_t*) array_get(cisrun,i);
  pid_t* tempcexitcode = (pid_t*) array_get(cexitcode,i);
  kfree(tempppid);
  kfree(temppisrun);
  kfree(tempcpid);
  kfree(tempcisrun);
  kfree(tempcexitcode);
  array_remove(ppid,i);
  array_remove(pisrun,i);
  array_remove(cpid,i);
  array_remove(cisrun,i);
  array_remove(cexitcode,i);
  return;
}

void sys__exit(int exitcode) {

  struct addrspace *as;
  struct proc *p = curproc;
  /* for now, just include this to keep the compiler from complaining about
     an unused variable */
  (void)exitcode;



  //DEBUG(DB_SYSCALL, "EXIT\n");
  //kprintf("ddfdfd\n");
#if OPT_A2
  lock_acquire(locks->ppidlock);
  //lock_acquire(locks->pisrunlock);
  //lock_acquire(locks->cisrunlock);
  //lock_acquire(locks->exitcodelock);
  //lock_acquire(locks->cpidlock);

  unsigned totalnumber = array_num(ppid);
  for (unsigned i = 0; i < totalnumber; ++i)
  {
    //kprintf("%d\n", totalnumber);
    pid_t tempppid = *((pid_t*) array_get(ppid,i));//parent pid
    pid_t tempcpid = *((pid_t*) array_get(cpid,i));//child pid

    int* a = array_get(pisrun, i);//to change the parent runing status

    int crun = *((int*) array_get(cisrun,i));//get the child runing status

    int* b = array_get(cisrun, i);//to change the child runing status

    int prun = *((int*) array_get(pisrun,i));//get the parent runing status

    int* change = array_get(cexitcode,i);//change the exit code

    if(p->p_pid == tempppid){//if it is a parent
      // int a = 0;
      // array_set(pisrun, i, &a);

      
      *a = 0;//set to 0(means not running)


      // int* k = kmalloc(sizeof(*k));
      // int* freep = (int*) array_get(pisrun,i);
      // *freep = 0;
      // kfree(freep);
      // *k = 0;

      // array_set(pisrun, i, k);//set to 0

      if(crun == 0){//if children die
        P(locks->reuselock);
          pid_t* tempcpid1 = kmalloc(sizeof(pid_t));
          *tempcpid1 = tempcpid;
          array_add(reuse, (void*) tempcpid1, NULL);//reuse
        V(locks->reuselock);
        freeall(i);//clean the i element of the 5 arrays
        i--;
        totalnumber--;
      }
    }
    else if(p->p_pid == tempcpid){//if it is a children
      // int* k = kmalloc(sizeof(*k));
      // int* freep = (int*) array_get(cisrun,i);
      // kfree(freep);
      // *k = 0;
      // int a = 0;
      // array_set(cisrun, i, &a);//set to 0

      *b = 0;//set to 0 (not running(child))
      
      if(prun == 0){//if parent die
        P(locks->reuselock);
          pid_t* tempcpid1 = kmalloc(sizeof(pid_t));
          *tempcpid1 = tempcpid;
          array_add(reuse, (void*) tempcpid1, NULL);//reuse
        V(locks->reuselock);
        freeall(i);
        i--;
        totalnumber--;
      }
      else{
        //int* tempexit = kmalloc(sizeof(int));
        int tempexit = _MKWAIT_EXIT(exitcode);
        // //int* freeex = (int*) array_get(cexitcode,i);
        // //kfree(freeex);
        // //array_set(cexitcode, i, &tempexit);
        
        *change = tempexit;

        //array_add(cexitcode, i, NULL) = _MKWAIT_EXIT(exitcode);

         
        //cv_broadcast(locks->cvlock, locks->cpidlock); 
        //cv_broadcast(locks->cvlock, locks->exitcodelock); 
        //cv_broadcast(locks->cvlock, locks->cisrunlock);
        //cv_broadcast(locks->cvlock, locks->pisrunlock);
        cv_broadcast(locks->cvlock, locks->ppidlock); //wake all chidren
         
      }
    }
  }
  //lock_release(locks->cpidlock);
  //lock_release(locks->exitcodelock);
  //lock_release(locks->cisrunlock);
  //lock_release(locks->pisrunlock);
  lock_release(locks->ppidlock);
  
  
  
  
  
    
  
  
#endif




  KASSERT(curproc->p_addrspace != NULL);
  as_deactivate();
  /*
   * clear p_addrspace before calling as_destroy. Otherwise if
   * as_destroy sleeps (which is quite possible) when we
   * come back we'll be calling as_activate on a
   * half-destroyed address space. This tends to be
   * messily fatal.
   */
  as = curproc_setas(NULL);
  as_destroy(as);

  /* detach this thread from its process */
  /* note: curproc cannot be used after this call */
  proc_remthread(curthread);

  /* if this is the last user process in the system, proc_destroy()
     will wake up the kernel menu thread */
  proc_destroy(p);
  
  thread_exit();
  /* thread_exit() does not return, so we should never get here */
  panic("return from thread_exit in sys_exit\n");
}


/* stub handler for getpid() system call                */
int
sys_getpid(pid_t *retval)
{
  /* for now, this is just a stub that always returns a PID of 1 */
  /* you need to fix this to make it work properly */
  *retval = 1;
  #if OPT_A2
  *retval = curproc->p_pid;
  #endif /* OPT_A2 */
  return(0);
}

/* stub handler for waitpid() system call                */

int
sys_waitpid(pid_t pid,
	    userptr_t status,
	    int options,
	    pid_t *retval)
{
  int exitstatus = 0;
  int result;


  struct proc* p = curproc;

  #if OPT_A2
  lock_acquire(locks->ppidlock);
  //lock_acquire(locks->pisrunlock);
  //lock_acquire(locks->cisrunlock);
  //lock_acquire(locks->exitcodelock);
  //lock_acquire(locks->cpidlock);
  int count = 0;
  unsigned totalnumber = array_num(cexitcode);
  for (unsigned i = 0; i < totalnumber; ++i)
  {
    pid_t tempppid = *((pid_t*) array_get(ppid,i));//parent pid
    pid_t tempcpid = *((pid_t*) array_get(cpid,i));//child pid

    int* crun = (int*) array_get(cisrun,i);//child runing status

    int* exitt = array_get(cexitcode,i);//exit code
    if(pid == tempcpid){//pid is a children and not a children of curproc
      
      if(tempppid != p->p_pid){
        //lock_release(locks->cpidlock);
        //lock_release(locks->exitcodelock);
        //lock_release(locks->cisrunlock);
        //lock_release(locks->pisrunlock);
        lock_release(locks->ppidlock);
        return(16);/* No child processes */
      }
    else{
      
      while(*crun == 1){//child hasnt die
        cv_wait(locks->cvlock,locks->ppidlock);
        //cv_wait(locks->cvlock,locks->pisrunlock);
        //cv_wait(locks->cvlock,locks->cisrunlock);
        //cv_wait(locks->cvlock,locks->exitcodelock);
        //cv_wait(locks->cvlock,locks->cpidlock);
        //crun = *((int*) array_get(cisrun,i));        
      }
      //int crun = *((int*) array_get(cisrun,i));
      if(*crun == 0){
        exitstatus = *exitt;
      }
      count = 1;
      break;
      }
    }
    //totalnumber = array_num(ppid);
  }
  //lock_release(locks->cpidlock);
  //lock_release(locks->exitcodelock);
  //lock_release(locks->cisrunlock);
  //lock_release(locks->pisrunlock);
  lock_release(locks->ppidlock);
  if(count == 0){
    return(15);/* No such process */
  }
  #endif


  /* this is just a stub implementation that always reports an
     exit status of 0, regardless of the actual exit status of
     the specified process.   
     In fact, this will return 0 even if the specified process
     is still running, and even if it never existed in the first place.

     Fix this!
  */

  if (options != 0) {
    return(EINVAL);
  }
  /* for now, just pretend the exitstatus is 0 */
  exitstatus = 0;
  result = copyout((void *)&exitstatus,status,sizeof(int));
  if (result) {
    return(result);
  }
  *retval = pid;
  return(0);
}

#if OPT_A2
int sys_fork(struct trapframe* tf, pid_t* retval){
  //DEBUG(DB_SYSCALL,"sysfork 1\n");

  struct proc* newproc;
  newproc = proc_create_runprogram(curproc->p_name);
  if(newproc == NULL){//check whether the proc create success
    return(3); //out of memory
  }


  if(newproc->p_pid > 32767){//lager than the max pid number
    proc_destroy(newproc);
    P(locks->reuselock);
      countpid--;
    V(locks->reuselock);
    return(12); /* Too many processes in system */
  }


  struct addrspace* newas;
  int check = -1;
  check = as_copy(curproc->p_addrspace,&newas);
  if(check == 3){//out out memoer
    proc_destroy(newproc);
    P(locks->reuselock);
      countpid--;
    V(locks->reuselock);
    return(3); //our of memory
  }
  else{
    newproc->p_addrspace = newas;
  }


  struct trapframe* newtf;//creat new trapframe
  newtf = kmalloc(sizeof(*newtf));
  if(newtf == NULL){
    proc_destroy(newproc);
    P(locks->reuselock);
      countpid--;
    V(locks->reuselock);
    return(3); //our of memory
  }
  else{
    memcpy(newtf,tf,sizeof(*newtf));
  }

  //init the new 5 elements of 5 arrays
  lock_acquire(locks->ppidlock);
  //lock_acquire(locks->pisrunlock);
  //lock_acquire(locks->cisrunlock);
  //lock_acquire(locks->exitcodelock);
  //lock_acquire(locks->cpidlock);
  pid_t* newppid = kmalloc(sizeof(*newppid));
  pid_t* newcpid = kmalloc(sizeof(*newcpid));
  int* newpisrun = kmalloc(sizeof(*newpisrun));
  int* newcisrun = kmalloc(sizeof(*newcisrun));
  int* newexit = kmalloc(sizeof(*newexit));
  *newppid = curproc->p_pid;
  *newcpid = newproc->p_pid;
  *newpisrun = 1;
  *newcisrun = 1;
  *newexit = 0;
  array_add(ppid,newppid,NULL);
  array_add(cpid,newcpid,NULL);
  array_add(pisrun,newpisrun,NULL);
  array_add(cisrun,newcisrun,NULL);
  array_add(cexitcode,newexit,NULL);
  //lock_release(locks->cpidlock);
  //lock_release(locks->exitcodelock);
  //lock_release(locks->cisrunlock);
  //lock_release(locks->pisrunlock);
  lock_release(locks->ppidlock);


  check = thread_fork("fthread", newproc, enter_forked_process,(void*)newtf, 1);

  if(check == 3){//no memory if create thread fork fail
    P(locks->reuselock);
      countpid--;
    V(locks->reuselock);

    lock_acquire(locks->ppidlock);
    //lock_acquire(locks->pisrunlock);
    //lock_acquire(locks->cisrunlock);
    //lock_acquire(locks->exitcodelock);
    //lock_acquire(locks->cpidlock);
    unsigned totalnumber = array_num(ppid);
    for (unsigned i = 0; i < totalnumber; ++i)//clean the element already create
    {
      pid_t tempppid = *((pid_t*) array_get(ppid,i));
      pid_t tempcpid = *((pid_t*) array_get(cpid,i));
      if(tempppid == curproc->p_pid && tempcpid == newproc->p_pid){
        freeall(i);
        i--;
        totalnumber--;
      }
    }
    //lock_release(locks->cpidlock);
    //lock_release(locks->exitcodelock);
    //lock_release(locks->cisrunlock);
    //lock_release(locks->pisrunlock);
    lock_release(locks->ppidlock);


    proc_destroy(newproc);
    return 3;
  }
  *retval = newproc->p_pid;
  return 0;
}

#endif


#include <types.h>
#include <lib.h>
#include <synchprobs.h>
#include <synch.h>
#include <opt-A1.h>
//#include <stdio.h>

/* 
 * This simple default synchronization mechanism allows only vehicle at a time
 * into the intersection.   The intersectionSem is used as a a lock.
 * We use a semaphore rather than a lock so that this code will work even
 * before locks are implemented.
 */

/* 
 * Replace this default synchronization mechanism with your own (better) mechanism
 * needed for your solution.   Your mechanism may use any of the available synchronzation
 * primitives, e.g., semaphores, locks, condition variables.   You are also free to 
 * declare other global variables if your solution requires them.
 */

//   N
// W   E
//   S
// 0--NW
// 1--NE
// 2--NS
// 3--WN
// 4--WE
// 5--WS
// 6--SW
// 7--SN
// 8--SE
// 9--EN
// 10--EW
// 11--ES

/*
 * replace this with declarations of any synchronization and other variables you need here
 */
//static struct semaphore *intersectionSem;
static struct lock *InterLock;
static struct cv *cvs[12];
static int count[12];

/* 
 * The simulation driver will call this function once before starting
 * the simulation
 *
 * You can use it to initialize synchronization and other variables.
 * 
 */
void
intersection_sync_init(void)
{
  /* replace this default implementation with your own implementation */
  for (int i = 0; i < 12; ++i)
  { 
    if (i == 0){cvs[i] = cv_create("NW");}
    else if(i == 1){cvs[i] = cv_create("NE");}
    else if(i == 2){cvs[i] = cv_create("NS");}
    else if(i == 3){cvs[i] = cv_create("WN");}
    else if(i == 4){cvs[i] = cv_create("WE");}
    else if(i == 5){cvs[i] = cv_create("WS");}
    else if(i == 6){cvs[i] = cv_create("SW");}
    else if(i == 7){cvs[i] = cv_create("SN");}
    else if(i == 8){cvs[i] = cv_create("SE");}
    else if(i == 9){cvs[i] = cv_create("EN");}
    else if(i == 10){cvs[i] = cv_create("EW");}
    else if(i == 11){cvs[i] = cv_create("ES");}

    count[i] = 0;

    if (cvs[i] == NULL)
    {
      panic("could not create cvs");
    }
  }
  InterLock = lock_create("intersectionlock");
  if (InterLock == NULL) {
    panic("could not create intersection locks");
  }
  return;
}

/* 
 * The simulation driver will call this function once after
 * the simulation has finished
 *
 * You can use it to clean up any synchronization and other variables.
 *
 */
void
intersection_sync_cleanup(void)
{
  /* replace this default implementation with your own implementation */
  //KASSERT(intersectionSem != NULL);
  //sem_destroy(intersectionSem);
  KASSERT(InterLock != NULL);
  for (int i = 0; i < 12; ++i)
  {
    KASSERT(cvs[i] != NULL); 
  }
  lock_destroy(InterLock);
  for (int i = 0; i < 12; ++i)
  {
    cv_destroy(cvs[i]);
  }

}


/*
 * The simulation driver will call this function each time a vehicle
 * tries to enter the intersection, before it enters.
 * This function should cause the calling simulation thread 
 * to block until it is OK for the vehicle to enter the intersection.
 *
 * parameters:
 *    * origin: the Direction from which the vehicle is arriving
 *    * destination: the Direction in which the vehicle is trying to go
 *
 * return value: none
 */

void
intersection_before_entry(Direction origin, Direction destination) 
{
  /* replace this default implementation with your own implementation */
  //(void)origin;  /* avoid compiler complaint about unused parameter */
  //(void)destination; /* avoid compiler complaint about unused parameter */
  //KASSERT(intersectionSem != NULL);
  //P(intersectionSem);
  KASSERT(InterLock != NULL);
  lock_acquire(InterLock);
  struct cv *curcv;
  int curcount;
  while(true){
    if(origin == north && destination == west)      {curcv = cvs[0]; curcount = count[0];}
    else if(origin == north && destination == east) {curcv = cvs[1]; curcount = count[1];}
    else if(origin == north && destination == south){curcv = cvs[2]; curcount = count[2];}
    else if(origin == west && destination == north) {curcv = cvs[3]; curcount = count[3];}
    else if(origin == west && destination == east)  {curcv = cvs[4]; curcount = count[4];}
    else if(origin == west && destination == south) {curcv = cvs[5]; curcount = count[5];}
    else if(origin == south && destination == west) {curcv = cvs[6]; curcount = count[6];}
    else if(origin == south && destination == north){curcv = cvs[7]; curcount = count[7];}
    else if(origin == south && destination == east) {curcv = cvs[8]; curcount = count[8];}
    else if(origin == east && destination == north) {curcv = cvs[9]; curcount = count[9];}
    else if(origin == east && destination == west)  {curcv = cvs[10]; curcount = count[10];}
    else{curcv = cvs[11]; curcount = count[11];}

    if(curcount == 0){
      if(origin == north && destination == west)      {count[6]++; count[10]++;}//nw
      else if(origin == north && destination == east) {count[10]++; count[11]++; count[6]++; count[7]++; count[8]++; count[3]++; count[4]++;}//ne
      else if(origin == north && destination == south){count[10]++; count[11]++; count[6]++; count[3]++; count[4]++; count[5]++;}//ns
      else if(origin == west && destination == north) {count[1]++; count[2]++; count[9]++; count[10]++; count[11]++; count[6]++; count[7]++;}//wn
      else if(origin == west && destination == east)  {count[6]++; count[7]++; count[8]++; count[11]++; count[1]++; count[2]++;}//we
      else if(origin == west && destination == south) {count[2]++; count[11]++;}//ws
      else if(origin == south && destination == west) {count[0]++; count[1]++; count[2]++; count[10]++; count[11]++; count[3]++; count[4]++;}//sw
      else if(origin == south && destination == north){count[1]++; count[9]++; count[10]++; count[11]++; count[3]++; count[4]++;}//sn
      else if(origin == south && destination == east) {count[1]++; count[4]++;}//se
      else if(origin == east && destination == north) {count[3]++; count[7]++;}//en
      else if(origin == east && destination == west)  {count[0]++; count[1]++; count[2]++; count[6]++; count[7]++; count[3]++;}//ew
      else{count[1]++; count[2]++; count[6]++; count[7]++; count[4]++; count[3]++; count[5]++;}//es
      break;
    }
    else{
      cv_wait(curcv,InterLock);
    }
  }
  lock_release(InterLock);
}


/*
 * The simulation driver will call this function each time a vehicle
 * leaves the intersection.
 *
 * parameters:
 *    * origin: the Direction from which the vehicle arrived
 *    * destination: the Direction in which the vehicle is going
 *
 * return value: none
 */

void
intersection_after_exit(Direction origin, Direction destination) 
{
  /* replace this default implementation with your own implementation */
  //(void)origin;  /* avoid compiler complaint about unused parameter */
  //(void)destination; /* avoid compiler complaint about unused parameter */
  //KASSERT(intersectionSem != NULL);
  //V(intersectionSem);
  KASSERT(InterLock != NULL);
  lock_acquire(InterLock);
  if(origin == north && destination == west)      {count[6]--; count[10]--;
                                                  if(count[6] == 0){cv_broadcast(cvs[6],InterLock);}
                                                  if(count[10] == 0){cv_broadcast(cvs[10],InterLock);}}//nw
  else if(origin == north && destination == east) {count[10]--; count[11]--; count[6]--; count[7]--; count[8]--; count[3]--; count[4]--;
                                                  if(count[10] == 0){cv_broadcast(cvs[10],InterLock);}
                                                  if(count[11] == 0){cv_broadcast(cvs[11],InterLock);}
                                                  if(count[6] == 0){cv_broadcast(cvs[6],InterLock);}
                                                  if(count[7] == 0){cv_broadcast(cvs[7],InterLock);}
                                                  if(count[8] == 0){cv_broadcast(cvs[8],InterLock);}
                                                  if(count[3] == 0){cv_broadcast(cvs[3],InterLock);}
                                                  if(count[4] == 0){cv_broadcast(cvs[4],InterLock);}}//ne
  else if(origin == north && destination == south){count[10]--; count[11]--; count[6]--; count[3]--; count[4]--; count[5]--;
                                                  if(count[10] == 0){cv_broadcast(cvs[10],InterLock);}
                                                  if(count[11] == 0){cv_broadcast(cvs[11],InterLock);}
                                                  if(count[6] == 0){cv_broadcast(cvs[6],InterLock);}
                                                  if(count[3] == 0){cv_broadcast(cvs[3],InterLock);}
                                                  if(count[4] == 0){cv_broadcast(cvs[4],InterLock);}
                                                  if(count[5] == 0){cv_broadcast(cvs[5],InterLock);}}//ns
  else if(origin == west && destination == north) {count[1]--; count[2]--; count[9]--; count[10]--; count[11]--; count[6]--; count[7]--;
                                                  if(count[1] == 0){cv_broadcast(cvs[1],InterLock);}
                                                  if(count[2] == 0){cv_broadcast(cvs[2],InterLock);}
                                                  if(count[9] == 0){cv_broadcast(cvs[9],InterLock);}
                                                  if(count[10] == 0){cv_broadcast(cvs[10],InterLock);}
                                                  if(count[11] == 0){cv_broadcast(cvs[11],InterLock);}
                                                  if(count[6] == 0){cv_broadcast(cvs[6],InterLock);}
                                                  if(count[7] == 0){cv_broadcast(cvs[7],InterLock);}}//wn
  else if(origin == west && destination == east)  {count[6]--; count[7]--; count[8]--; count[11]--; count[1]--; count[2]--;
                                                  if(count[6] == 0){cv_broadcast(cvs[6],InterLock);}
                                                  if(count[7] == 0){cv_broadcast(cvs[7],InterLock);}
                                                  if(count[8] == 0){cv_broadcast(cvs[8],InterLock);}
                                                  if(count[11] == 0){cv_broadcast(cvs[11],InterLock);}
                                                  if(count[1] == 0){cv_broadcast(cvs[1],InterLock);}
                                                  if(count[2] == 0){cv_broadcast(cvs[2],InterLock);}}//we
  else if(origin == west && destination == south) {count[2]--; count[11]--;
                                                  if(count[2] == 0){cv_broadcast(cvs[2],InterLock);}
                                                  if(count[11] == 0){cv_broadcast(cvs[11],InterLock);}}//ws
  else if(origin == south && destination == west) {count[0]--; count[1]--; count[2]--; count[10]--; count[11]--; count[3]--; count[4]--;
                                                  if(count[0] == 0){cv_broadcast(cvs[0],InterLock);}
                                                  if(count[1] == 0){cv_broadcast(cvs[1],InterLock);}
                                                  if(count[2] == 0){cv_broadcast(cvs[2],InterLock);}
                                                  if(count[10] == 0){cv_broadcast(cvs[10],InterLock);}
                                                  if(count[11] == 0){cv_broadcast(cvs[11],InterLock);}
                                                  if(count[3] == 0){cv_broadcast(cvs[3],InterLock);}
                                                  if(count[4] == 0){cv_broadcast(cvs[4],InterLock);}}//sw
  else if(origin == south && destination == north){count[1]--; count[9]--; count[10]--; count[11]--; count[3]--; count[4]--;
                                                  if(count[1] == 0){cv_broadcast(cvs[1],InterLock);}
                                                  if(count[9] == 0){cv_broadcast(cvs[9],InterLock);}
                                                  if(count[10] == 0){cv_broadcast(cvs[10],InterLock);}
                                                  if(count[11] == 0){cv_broadcast(cvs[11],InterLock);}
                                                  if(count[3] == 0){cv_broadcast(cvs[3],InterLock);}
                                                  if(count[4] == 0){cv_broadcast(cvs[4],InterLock);}}//sn
  else if(origin == south && destination == east) {count[1]--; count[4]--;
                                                  if(count[1] == 0){cv_broadcast(cvs[1],InterLock);}
                                                  if(count[4] == 0){cv_broadcast(cvs[4],InterLock);}}//se
  else if(origin == east && destination == north) {count[3]--; count[7]--;
                                                  if(count[3] == 0){cv_broadcast(cvs[3],InterLock);}
                                                  if(count[7] == 0){cv_broadcast(cvs[7],InterLock);}}//en
  else if(origin == east && destination == west)  {count[0]--; count[1]--; count[2]--; count[6]--; count[7]--; count[3]--;
                                                  if(count[0] == 0){cv_broadcast(cvs[0],InterLock);}
                                                  if(count[1] == 0){cv_broadcast(cvs[1],InterLock);}
                                                  if(count[2] == 0){cv_broadcast(cvs[2],InterLock);}
                                                  if(count[6] == 0){cv_broadcast(cvs[6],InterLock);}
                                                  if(count[7] == 0){cv_broadcast(cvs[7],InterLock);}
                                                  if(count[3] == 0){cv_broadcast(cvs[3],InterLock);}}//ew
  else{count[1]--; count[2]--; count[6]--; count[7]--; count[4]--; count[3]--; count[5]--;
                                                  if(count[1] == 0){cv_broadcast(cvs[1],InterLock);}
                                                  if(count[2] == 0){cv_broadcast(cvs[2],InterLock);}
                                                  if(count[6] == 0){cv_broadcast(cvs[6],InterLock);}
                                                  if(count[7] == 0){cv_broadcast(cvs[7],InterLock);}
                                                  if(count[4] == 0){cv_broadcast(cvs[4],InterLock);}
                                                  if(count[3] == 0){cv_broadcast(cvs[3],InterLock);}
                                                  if(count[5] == 0){cv_broadcast(cvs[5],InterLock);}}//es
  lock_release(InterLock);
}

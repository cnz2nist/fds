#!/bin/bash

# This script runs a set of Validation Cases on a Linux machine with a batch queuing system.
# See the file Validation/Common_Run_All.sh for more information.
export SVNROOT=`pwd`/../..
source $SVNROOT/Validation/Common_Run_All.sh

$QFDS $DEBUG $QUEUE -p 6 -d $INDIR Q9_CF1.fds
$QFDS $DEBUG $QUEUE -p 6 -d $INDIR Q15_CF1.fds  
$QFDS $DEBUG $QUEUE -p 18 -d $INDIR Q21_CF1.fds
$QFDS $DEBUG $QUEUE -p 18 -d $INDIR Q27_CF1.fds
$QFDS $DEBUG $QUEUE -p 54 -d $INDIR Q33_CF1.fds
echo FDS cases submitted

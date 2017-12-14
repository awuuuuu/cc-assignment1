#!/bin/bash
LOG="log.txt"
SCRIPT="./scripts"
echo "Benchmarks" >> ${LOG}
echo `date` >> ${LOG}

loop() {
START_TIME=$(date +%s)
TIME_LEFT=0
echo "Start of One Benchmark" >> ${LOG}
while [ $TIME_LEFT -le 300 ]
do
  $1 2>> ${LOG} >> ${LOG}
  CURR="`date +%s`"
  TIME_LEFT=$(($CURR - $START_TIME))
  echo $TIME_LEFT
done
}
#loop ${SCRIPT}/fio.sh && loop ${SCRIPT}/disk.sh
loop ${SCRIPT}/disk.sh && loop ${SCRIPT}/fio.sh && loop ./linpack.sh && loop ./memsweep.sh


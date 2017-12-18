#!/bin/bash
mkdir data
grep -n 'MB/s\|Start of' log.txt >> ./data/sequential.txt
grep -n 'iops\|Start of' log.txt >> ./data/random.txt
grep -n 'KFLOPS\|Start of' log.txt >> ./data/linpack.txt
grep -n 'Memsweep\|Start of' log.txt >> ./data/memsweep.txt


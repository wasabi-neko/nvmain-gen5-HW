#!/bin/bash
# full-way
gem5_path=/home/user/project/gem5
result_path=/home/user/project/result/q2/full-way/qsort

qsort=/home/user/project/benchmark/quicksort.out
arg="
    --cpu-type=TimingSimpleCPU
    --caches --l2cache --l3cache
    --l3_assoc=1
    --l1i_size=32kB --l1d_size=32kB --l2_size=128kB --l3_size=1MB
    --mem-type=NVMainMemory
    --nvmain-config=/home/user/project/NVmain/Config/PCM_ISSCC_2012_4GB.config
"

${gem5_path}/build/X86/gem5.opt ${gem5_path}/configs/example/se.py -c ${qsort} ${arg} > ${result_path}/q2-result
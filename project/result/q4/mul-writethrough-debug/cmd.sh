#!/bin/bash
gem5_path=/home/user/project/gem5
# result_path=/home/user/project/result/q4/qsort
result_path=${PWD}

hello=$(echo ${gem5_path}/tests/test-progs/hello/bin/x86/linux/hello)
qsort=/home/user/project/benchmark/quicksort.out
mul=/home/user/project/benchmark/multiply.out
arg="
    --cpu-type=TimingSimpleCPU
    --caches --l2cache --l3cache
    --l1i_size=32kB --l1d_size=32kB --l2_size=128kB --l3_size=1MB
    --mem-type=NVMainMemory
    --nvmain-config=/home/user/project/NVmain/Config/PCM_ISSCC_2012_4GB.config
"

# ${gem5_path}/build/X86/gem5.opt --debug-flags=Cache ${gem5_path}/configs/example/se.py -c ${qsort} ${arg} > ${result_path}/debug-result
${gem5_path}/build/X86/gem5.opt --debug-flags=Cache ${gem5_path}/configs/example/se.py -c ${mul} ${arg} > ${result_path}/debug-result

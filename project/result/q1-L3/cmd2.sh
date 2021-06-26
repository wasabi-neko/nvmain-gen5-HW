#!/bin/bash
gem5_path=/home/user/project/gem5
result_path=/home/user/project/result/q1-L3

benchmark_mul=/home/user/project/benchmark/multiply.out
benchmark_qsort=/home/user/project/benchmark/quicksort.out
arg='--cpu-type=TimingSimpleCPU --caches --l2cache --l3cache --mem-type=NVMainMemory --nvmain-config=/home/user/project/NVmain/Config/PCM_ISSCC_2012_4GB.config --l1i_size=32kB --l1d_size=32kB --l2_size=128kB --l3_size=1MB'

# rm /home/user/project/result/q1/mul_cmd_result
# ${gem5_path}/build/X86/gem5.opt ${gem5_path}/configs/example/se.py -c $benchmark_mul $arg > ${result_path}/mul_cmd_result

${gem5_path}/build/X86/gem5.opt ${gem5_path}/configs/example/se.py -c $benchmark_qsort $arg > ${result_path}/qsort_cmd_result
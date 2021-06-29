# Computer-Orgnization project2
> NVmain-gem5

## TODOs
- [x] Q0: Gem5 + NVmain Build-up
- [x] Q1: Enable L3 last level cache in GEM5 + NVmain
- [x] Q2: Config last level cache to 2-way and full and full-way associative ache and test performance.
- [x] Q3: Modify last level cache policy based on RRIP
- [x] Q4: Test the performance of write back and write through policy based on 4-wau associatve cache with isscc_pcm
    -> see branch: `q5-write-through`. (accidentally named it q5 insteed q4)
- Bonus
    - [ ] Design last level cache policy to reduce the energy consumption of pcm_based main memory
    - [ ] Baseline: LRU
    - > I don't have enough time... JustGiveUp QQ

## Solutions

### Q0 (Build up)

I use docker container for simulate the ubuntu:18.04 env  
then just 跟著教學做

### Q1 (Enable L3)

- `gem5/config/common/Cache.py`
- `gem5/config/common/CacheConfig.py`
- `gem5/config/common/Options.py`
- `gem5/src/cpu/BaseCPU.py`
- `project/gem5/src/mem/XBar.py`

### Q2 (2-way assoc and full-way assoc)

加上參數
```bash
--l3_assoc=2
```

### Q3 (change to RRIP)

懶的打，之後補

### Q4 (write through)

懶的打，之後補 \
重點：`BaseCache::writecleanBlk()`

### Bonus

JustGiveUP

---
---
> I am the bone of my computer. \
> Steel is my body, and coffee is my blood. \
> I have viewed over a thousand code. \
> Unknown to writeback. \
> Nor known to writeclean. \
> Have withstood pain to write many code. \
> Yet, those hands will never hold anything. \
> So as I pray, unlimited COFFEE works.

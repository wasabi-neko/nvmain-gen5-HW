# Computer-Orgnization project2
> NVmain-gem5

## info
- > [討論筆記](https://hackmd.io/@hami-duck/HJ9clQUju)
- `project` 為外部與 container 連通的 volume
- `/project/result/` 為個別問題的指令與結果存放的地方
- 修改檔案可在 `git log` 修改紀錄中找到
- 問題 「write-through」相關檔案在 `q5-write-through` branch 中，其餘問題都在 `master`
- gem5 與 NVmain 的 build 都設為 gitignore


## TODOs
- [x] Q0: Gem5 + NVmain Build-up
- [x] Q1: Enable L3 last level cache in GEM5 + NVmain
- [x] Q2: Config last level cache to 2-way and full and full-way associative ache and test performance.
- [x] Q3: Modify last level cache policy based on RRIP
- [x] Q4: Test the performance of write back and write through policy based on 4-wau associatve cache with isscc_pcm  
    - > see branch: `q5-write-through`. (accidentally named it q5 insteed q4)
- Bonus
    - [ ] Design last level cache policy to reduce the energy consumption of pcm_based main memory
    - [ ] Baseline: LRU
    - > I don't have enough time... JustGiveUp QQ

## Solutions

### Q0 (Build up)

I use docker container to simulate the ubuntu:18.04 env  
then just 跟著教學做

### Q1 (Enable L3)

- `gem5/configs/common/Caches.py`
- `gem5/configs/common/CacheConfig.py`
- `gem5/configs/common/Options.py`
- `gem5/src/cpu/BaseCPU.py`
- `project/gem5/src/mem/XBar.py`

### Q2 (2-way assoc and full-way assoc)

加上參數
```bash
--l3_assoc=2
```

### Q3 (change to RRIP)

`gem5/configs/commonCaches.py` 中的 L3 Cache 加入: \
```python3
replacement_policy = Param.BaseReplacementPolicy(RRIPRP(),"Replacement policy")
```

`gem5/src/mem/cache/replacement_policies/ReplacementPolicies.py` 中列出了所有 Policy

### Q4 (write through)

重點：`BaseCache::writecleanBlk()` \
在 write hit 後，生成 writeclean packet 送給 writebacks \
writeclean 會一路往下 writeback 直到 memory \

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

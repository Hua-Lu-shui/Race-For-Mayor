tellraw @s {"text":"【名誉决策】公开道歉","color":"gold","bold":true}
tellraw @s {"text":"旧城区改造承诺迟迟没有兑现，居民在公开会上要求你正面回应。一次道歉可能挽回信任，也可能被对手攻击软弱。","color":"white"}
tellraw @s [{"text":"[激进] 主动承认并给出补偿","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/apology/apology_a"}}]
tellraw @s [{"text":"[折中] 解释原因并公布时间表","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/apology/apology_b"}}]
tellraw @s [{"text":"[保守] 强调客观困难","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/apology/apology_c"}}]

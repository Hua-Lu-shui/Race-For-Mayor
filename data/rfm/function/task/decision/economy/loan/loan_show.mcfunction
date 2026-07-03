#显示任务背景以及选项
tellraw @s [{"text":"[激进] 大量借款","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/loan/loan_a"}},{"text":"  经济 +4，民生 +2，名誉 -1","color":"gray"}]

tellraw @s [{"text":"[折中] 小额融资","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/loan/loan_b"}},{"text":"  经济 +2，民生 +1","color":"gray"}]

tellraw @s [{"text":"[保守] 不借款","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/economy/loan/loan_c"}},{"text":"  名誉 +1，经济 -1","color":"gray"}]


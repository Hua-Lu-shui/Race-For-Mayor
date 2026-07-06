tellraw @s {"text":"【民生决策】租房纠纷","color":"gold","bold":true}
tellraw @s {"text":"近期租客和房东纠纷增多，押金、维修和涨租问题集中爆发。建立调解机制能缓和矛盾。","color":"white"}
tellraw @s [{"text":"[激进] 设立租房仲裁中心","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/rental_dispute/rental_dispute_a"}}]
tellraw @s [{"text":"[折中] 开通调解热线","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/rental_dispute/rental_dispute_b"}}]
tellraw @s [{"text":"[保守] 交给市场协商","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/welfare/rental_dispute/rental_dispute_c"}}]

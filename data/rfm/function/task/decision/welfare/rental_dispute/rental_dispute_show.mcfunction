#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【民生决策】租房纠纷","color":"gold","bold":true}
tellraw @s {"text":"近期租客和房东纠纷增多，押金、维修和涨租问题集中爆发。建立调解机制能缓和矛盾。","color":"white"}
tellraw @s [{"text":"[激进] 设立租房仲裁中心","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 开通调解热线","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 交给市场协商","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

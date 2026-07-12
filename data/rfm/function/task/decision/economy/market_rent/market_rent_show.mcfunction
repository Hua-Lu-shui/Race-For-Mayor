scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【经济决策】摊位租金","color":"gold","bold":true}
tellraw @s {"text":"夜市摊主反映租金上涨过快，市场管理方则说维护成本也在增加。租金政策会影响小商业和居民消费。","color":"white"}
tellraw @s [{"text":"[激进] 强制大幅降租","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 设置阶梯租金","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 维持市场定价","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

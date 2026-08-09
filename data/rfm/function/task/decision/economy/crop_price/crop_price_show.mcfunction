#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【经济决策】农产品保底收购","color":"gold","bold":true}
tellraw @s {"text":"本地蔬果丰收后价格骤跌，近郊农户面临亏损。建立保底收购能稳定生产，却可能造成库存积压和过度种植。","color":"white"}
tellraw @s [{"text":"[激进] 政府按保护价全部收购","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 只收购基本生活品类","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 交由市场自行消化","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

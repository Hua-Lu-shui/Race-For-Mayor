#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【民生决策】高温劳动保护","color":"gold","bold":true}
tellraw @s {"text":"持续高温让建筑、环卫和配送人员频繁中暑。强制停工能保障安全，但工程进度、商家订单和劳动者收入都会受到影响。","color":"white"}
tellraw @s [{"text":"[激进] 高温时段强制停工并补贴工资","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 错峰作业并增加休息时间","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 只发布防暑建议","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

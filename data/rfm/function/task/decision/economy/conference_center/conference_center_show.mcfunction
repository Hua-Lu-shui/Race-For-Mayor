#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【经济决策】会展中心","color":"gold","bold":true}
tellraw @s {"text":"招商团队提议建设大型会展中心，吸引展会和商务活动。项目能提升城市商业地位，但投资巨大。","color":"white"}
tellraw @s [{"text":"[激进] 立即启动建设","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 先改造现有场馆","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 暂缓建设","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

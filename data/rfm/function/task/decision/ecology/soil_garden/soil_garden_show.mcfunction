#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【生态决策】社区菜园土壤","color":"gold","bold":true}
tellraw @s {"text":"一处居民自发经营的社区菜园被检测出土壤重金属超标。菜园承载着邻里活动，但继续种植食用作物存在健康风险。","color":"white"}
tellraw @s [{"text":"[激进] 挖除污染土并全面修复","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 改用隔离种植箱并持续检测","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 关闭菜园并迁走居民活动","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

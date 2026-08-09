#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【民生决策】夜间公共厕所","color":"gold","bold":true}
tellraw @s {"text":"夜班工人、司机和夜间游客反映公共厕所关门过早。延长开放能解决实际困难，但保洁、安全和水电成本都会增加。","color":"white"}
tellraw @s [{"text":"[激进] 全城公共厕所通宵开放","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 交通枢纽和商圈延时开放","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 维持现有开放时间","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

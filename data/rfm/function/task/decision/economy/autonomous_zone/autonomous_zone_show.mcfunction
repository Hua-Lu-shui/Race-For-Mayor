#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【经济决策】自动驾驶试验区","color":"gold","bold":true}
tellraw @s {"text":"多家科技企业希望在本市测试自动驾驶车辆。项目能吸引研发团队，但道路安全、事故责任和居民出行习惯仍有争议。","color":"white"}
tellraw @s [{"text":"[激进] 开放中心城区全天测试","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 只开放封闭线路试运行","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 暂缓所有道路测试","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

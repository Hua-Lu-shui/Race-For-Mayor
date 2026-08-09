#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【民生决策】骑手休息驿站","color":"gold","bold":true}
tellraw @s {"text":"外卖和快递骑手长期缺少饮水、充电和避雨地点。建设公共驿站能改善劳动条件，但场地与维护费用需要长期承担。","color":"white"}
tellraw @s [{"text":"[激进] 每个街区建设全天驿站","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 在交通枢纽设置共享驿站","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 要求平台企业自行解决","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

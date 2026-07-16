#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【经济决策】港口贸易","color":"gold","bold":true}
tellraw @s {"text":"邻近城市邀请你共同建设区域贸易通道。参与越深，商业机会越大，但也需要承担基础设施投入。","color":"white"}
tellraw @s [{"text":"[激进] 全力加入贸易通道","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 先开放部分线路","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 只做小规模合作","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【生态决策】清洁能源","color":"gold","bold":true}
tellraw @s {"text":"市政府计划更新公共建筑供能系统。清洁能源方案更环保，但前期投入高、回报慢；传统方案便宜稳定，却会继续增加排放压力。你需要决定能源路线。","color":"white"}

tellraw @s [{"text":"[激进] 全面更换清洁能源设备","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"text":"[折中] 先改造学校和医院","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"text":"[保守] 继续使用现有能源系统","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

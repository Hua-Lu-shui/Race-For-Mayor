#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【民生决策】图书馆开放","color":"gold","bold":true}
tellraw @s {"text":"学生和上班族希望图书馆延长夜间开放时间。更多开放能提升公共服务，但增加人力成本。","color":"white"}
tellraw @s [{"text":"[激进] 延长所有馆开放","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 主馆夜间开放","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 维持现有时间","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】市民荣誉奖","color":"gold","bold":true}
tellraw @s {"text":"年度市民荣誉奖被质疑长期由少数机构内部决定。公开评选更有参与感，但拉票、争议和组织成本也会随之增加。","color":"white"}
tellraw @s [{"text":"[激进] 全程公开并由市民投票","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 专家初选后开放投票","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 继续由评审会内部评定","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

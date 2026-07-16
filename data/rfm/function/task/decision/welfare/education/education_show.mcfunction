#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【民生决策】学校扩招","color":"gold","bold":true}
tellraw @s {"text":"新城区入住人口快速增加，家长抱怨学位紧张。教育局建议扩建学校并招聘教师，但这会占用下一阶段的城市预算。你需要决定教育投入。","color":"white"}

tellraw @s [{"text":"[激进] 新建学校并大幅扩招","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"text":"[折中] 扩建重点校区","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"text":"[保守] 先调整片区和班额","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

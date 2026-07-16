#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【民生决策】公交线路","color":"gold","bold":true}
tellraw @s {"text":"郊区居民反映通勤时间过长，要求增加公交线路和班次。交通部门认为这能改善生活便利，但低客流线路可能长期亏损。你需要决定公共交通方案。","color":"white"}

tellraw @s [{"text":"[激进] 大幅增加公交线路","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"text":"[折中] 增开高峰通勤专线","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"text":"[保守] 只优化现有线路","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

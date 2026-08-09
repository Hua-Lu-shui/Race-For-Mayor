#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】城市荣誉撤销","color":"gold","bold":true}
tellraw @s {"text":"一名曾获城市荣誉的企业家被查出长期拖欠工人工资。市民要求撤销称号，但案件尚未完成最终审理。","color":"white"}
tellraw @s [{"text":"[激进] 立即撤销并公开除名","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 暂停荣誉等待调查结果","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 判决前继续保留荣誉","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【生态决策】外来物种治理","color":"gold","bold":true}
tellraw @s {"text":"城郊湖泊出现快速扩散的外来水生植物，已经挤压本地鱼类栖息空间。全面清除费用高，也可能误伤其他生物。","color":"white"}
tellraw @s [{"text":"[激进] 封湖开展全面清除","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 优先治理繁殖最密集水域","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 继续监测等待自然消退","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

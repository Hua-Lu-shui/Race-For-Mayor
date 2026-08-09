#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【民生决策】心理援助热线","color":"gold","bold":true}
tellraw @s {"text":"学校、社区和企业都报告心理求助增加，但专业咨询名额严重不足。热线可以尽快分流需求，也需要稳定的专业团队。","color":"white"}
tellraw @s [{"text":"[激进] 建立全天专业危机热线","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 联合医院开设晚间热线","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 仅发放现有机构联络手册","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】城市吉祥物","color":"gold","bold":true}
tellraw @s {"text":"沿用多年的城市吉祥物被年轻市民认为已经过时，设计协会建议重新征集。换新能制造话题，也可能让熟悉旧形象的居民反感。","color":"white"}
tellraw @s [{"text":"[激进] 举办全国设计大赛","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 由本地学生提案公投","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 保留旧形象只做修饰","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

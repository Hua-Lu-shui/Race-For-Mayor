#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【生态决策】屋顶绿化","color":"gold","bold":true}
tellraw @s {"text":"环保团体建议推广屋顶绿化，降低热岛效应。物业担心维护成本，商户担心施工影响营业。","color":"white"}
tellraw @s [{"text":"[激进] 强制新建筑绿化","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 补贴自愿改造","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 只做示范项目","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

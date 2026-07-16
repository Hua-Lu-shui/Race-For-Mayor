#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【经济决策】就业补贴","color":"gold","bold":true}
tellraw @s {"text":"本市部分行业出现裁员压力，企业希望政府发放补贴稳定岗位。财政部门提醒补贴会增加支出，市民则更关心工作机会和生活保障。你需要决定补贴力度。","color":"white"}

tellraw @s [{"text":"[激进] 大额补贴重点企业","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"text":"[折中] 补贴中小企业岗位","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"text":"[保守] 控制补贴支出","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

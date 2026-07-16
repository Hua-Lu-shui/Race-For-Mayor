#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【经济决策】招商引资","color":"gold","bold":true}
tellraw @s {"text":"外地企业准备来本市投资建厂，但他们要求政府提供土地和政策优惠。支持者认为这能快速拉动经济，反对者担心城市压力和公众质疑。你需要决定招商方案。","color":"white"}

tellraw @s [{"text":"[激进] 引进大型工业园","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"text":"[折中] 扶持本地创业园","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"text":"[保守] 暂缓大型招商","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

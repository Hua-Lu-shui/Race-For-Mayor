#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【经济决策】夜市经济","color":"gold","bold":true}
tellraw @s {"text":"市中心商圈人流下降，许多小商贩希望开放夜市来增加收入。支持者认为夜市能带动消费和就业，反对者担心噪音、垃圾和交通混乱。你需要决定夜市政策。","color":"white"}

tellraw @s [{"text":"[激进] 全面开放大型夜市","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"text":"[折中] 设立规范夜市街区","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"text":"[保守] 严格限制流动摊贩","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

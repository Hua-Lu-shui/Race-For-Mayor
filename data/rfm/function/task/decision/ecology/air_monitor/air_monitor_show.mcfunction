scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【生态决策】空气监测","color":"gold","bold":true}
tellraw @s {"text":"市民质疑空气质量数据不够透明。增加监测站能提升信任，也可能暴露更多环境问题。","color":"white"}
tellraw @s [{"text":"[激进] 公开实时监测网","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 重点区域加监测","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 维持月度报告","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

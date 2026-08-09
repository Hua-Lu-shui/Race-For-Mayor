#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】AI政务助手","color":"gold","bold":true}
tellraw @s {"text":"技术团队提出让AI政务助手全天回答市民问题。它能加快响应，却可能出现错误答复，也会让不熟悉智能设备的居民感到不便。","color":"white"}
tellraw @s [{"text":"[激进] 全面接管线上咨询","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 仅试运行常见问答","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 坚持全部人工答复","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"text":"【名誉决策】公开辩论","color":"gold","bold":true}
tellraw @s {"text":"几位候选人将在市政广场进行公开辩论。现场观众很多，媒体也会直播。你可以选择强势进攻、理性陈述，或尽量减少冲突。","color":"white"}
tellraw @s [{"text":"[激进] 主动攻击对手漏洞","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"text":"[折中] 重点阐述自己的方案","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"text":"[保守] 避免正面交锋","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]
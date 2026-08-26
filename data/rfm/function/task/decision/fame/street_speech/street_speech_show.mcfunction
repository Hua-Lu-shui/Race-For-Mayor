#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.f2dd6bac737d","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.c03e2c8dcf39","color":"white"}
tellraw @s [{"translate":"rfm.text.2a7840513721","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.654dcc544920","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.5f5ed9108d2f","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.6ebfede9a3e3","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.78a84d95833a","color":"white"}
tellraw @s [{"translate":"rfm.text.d76d02908d74","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.5411f976ffd5","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.074fb6696847","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

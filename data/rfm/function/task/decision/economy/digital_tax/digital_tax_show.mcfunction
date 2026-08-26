#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.6f727e2a5a1f","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.c5b03decab80","color":"white"}
tellraw @s [{"translate":"rfm.text.cd4b942f1ee8","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.4f320bf4369c","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.60a8b398a413","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.3218a264eaf6","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.1569bc76204a","color":"white"}
tellraw @s [{"translate":"rfm.text.a7ec1df5445a","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.27f9b7643ee2","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.c96eaf6eb7a0","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

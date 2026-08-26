#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.0b6efc0485a1","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.272bc899fc7a","color":"white"}
tellraw @s [{"translate":"rfm.text.4aa8466deb85","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.afef1e34e292","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.7a5fb5a60c7b","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

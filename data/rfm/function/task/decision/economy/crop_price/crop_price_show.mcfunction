#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.48d4c171be2e","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.d6aefca4a50c","color":"white"}
tellraw @s [{"translate":"rfm.text.22b8e83b37e1","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.d078bec382f2","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.de9a92048603","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

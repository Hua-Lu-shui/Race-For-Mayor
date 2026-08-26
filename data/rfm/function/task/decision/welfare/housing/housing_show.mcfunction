#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.3950ae0dea86","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.b0eeef60ba56","color":"white"}

tellraw @s [{"translate":"rfm.text.e217bd14e978","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.0c115fa0c554","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.4d1c1182a901","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

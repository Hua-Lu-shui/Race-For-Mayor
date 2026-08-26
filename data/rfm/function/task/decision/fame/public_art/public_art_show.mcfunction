#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.d39e263f9150","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.09541971d8a0","color":"white"}
tellraw @s [{"translate":"rfm.text.29017ef7280e","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.6b25c2c852b2","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.942d9b0b5ccf","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

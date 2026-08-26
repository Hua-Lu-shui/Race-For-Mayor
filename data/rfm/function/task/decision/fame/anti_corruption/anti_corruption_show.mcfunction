#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.5cb2a2ca5fb9","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.11f6cea83b12","color":"white"}
tellraw @s [{"translate":"rfm.text.daa483977528","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.7cdfd31e749e","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.599a46b0e449","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

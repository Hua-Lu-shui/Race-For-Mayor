#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.9b20a21461d8","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.a0248434609d","color":"white"}
tellraw @s [{"translate":"rfm.text.0d171b595166","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.d0f97aca5a53","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.13373fb55fb1","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

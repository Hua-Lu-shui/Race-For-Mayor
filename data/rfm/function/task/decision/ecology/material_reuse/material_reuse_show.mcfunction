#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.497bad16b530","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.21432949caa9","color":"white"}
tellraw @s [{"translate":"rfm.text.60dcff9a111a","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.303379d9b61f","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.3a2a4ca11df8","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

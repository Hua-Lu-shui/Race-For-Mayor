#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.a9bbf5309100","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.5d157c63eac9","color":"white"}
tellraw @s [{"translate":"rfm.text.ac40394e7ff2","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.8ade35f274f8","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.2fe424f3290f","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

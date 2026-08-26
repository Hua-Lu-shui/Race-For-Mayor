#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.8e879b1d8053","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.9891c8e0b6df","color":"white"}
tellraw @s [{"translate":"rfm.text.a8df52aac5ea","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.d8d918024e16","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.3e4c14c0d30e","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

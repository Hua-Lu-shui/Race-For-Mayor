#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.2073643aa275","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.45d752dcdb80","color":"white"}

tellraw @s [{"translate":"rfm.text.3bc5b1048867","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.0398b9c322b3","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.73ed86651bdf","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

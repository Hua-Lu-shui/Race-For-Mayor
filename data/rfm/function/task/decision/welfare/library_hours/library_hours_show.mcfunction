#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.366436c17a6c","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.5a58d7335070","color":"white"}
tellraw @s [{"translate":"rfm.text.a1308f5e9083","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.c46a82a3f16f","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.3e34736a7a1a","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

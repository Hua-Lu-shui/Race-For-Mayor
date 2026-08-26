#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.9f21510c7dc0","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.ff1c2de3e63b","color":"white"}
tellraw @s [{"translate":"rfm.text.795d43706013","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.164b198a22d4","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.fffd066ac222","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

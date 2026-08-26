#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.66235d2c5500","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.84504be09e73","color":"white"}
tellraw @s [{"translate":"rfm.text.5a863d9c7ed0","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.5c97f5bf45c6","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.a388d99578d8","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.c890e10881c3","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.c1ca8f2e548d","color":"white"}
tellraw @s [{"translate":"rfm.text.8e5f3e9cb73e","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.590302fd92c8","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.c8c61f82cfa1","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

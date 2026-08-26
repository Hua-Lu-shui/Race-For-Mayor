#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.35ef12b93fe3","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.43dab8ebd93f","color":"white"}
tellraw @s [{"translate":"rfm.text.d4123300588f","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.8dfc73c71222","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.972e97a12188","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

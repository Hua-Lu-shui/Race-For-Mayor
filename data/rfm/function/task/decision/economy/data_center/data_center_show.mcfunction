#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.23107fb57f2c","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.3692ffc3a570","color":"white"}
tellraw @s [{"translate":"rfm.text.ec97b4bbfd8c","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.5b47ac2c2b89","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.050094d5bfdd","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

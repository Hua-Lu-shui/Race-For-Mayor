#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.c2f5e0c9ed3b","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.a24555acbe9a","color":"white"}
tellraw @s [{"translate":"rfm.text.04bc7ef18bda","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.ebbc319e82af","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.87ae2324782b","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

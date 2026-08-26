#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.2b7877414f5c","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.33e3545c9fad","color":"white"}
tellraw @s [{"translate":"rfm.text.72d26942344c","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.a19cc280c8b3","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.b30bcb44cfa0","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

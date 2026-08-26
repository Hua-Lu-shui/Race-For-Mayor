#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.03cda99519b9","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.86fd2e07d1cd","color":"white"}
tellraw @s [{"translate":"rfm.text.334b7bf3ee39","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.b340f2e339f9","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.bbb706da563b","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

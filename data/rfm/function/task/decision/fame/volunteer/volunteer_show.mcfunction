#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.9b49732e3649","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.b89cbe302cf0","color":"white"}
tellraw @s [{"translate":"rfm.text.28f096c96f7e","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.7c4f215c7ebe","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.845991e55b80","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.03f6f827642f","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.a7151316e505","color":"white"}
tellraw @s [{"translate":"rfm.text.4485321af7ed","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.889901f84da6","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.0a8d22307bf6","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

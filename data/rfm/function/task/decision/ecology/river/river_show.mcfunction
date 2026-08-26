#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.769368f3799f","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.78fd265eee9b","color":"white"}

tellraw @s [{"translate":"rfm.text.454ab230ea50","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.1ad61448e490","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.4ea8b20d46e0","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

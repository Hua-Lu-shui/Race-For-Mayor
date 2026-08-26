#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.f18381d91811","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.3d851b59a601","color":"white"}
tellraw @s [{"translate":"rfm.text.e839aecdedbc","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.56ab47386b18","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.8536f9e8a6eb","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

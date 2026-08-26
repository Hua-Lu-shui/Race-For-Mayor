#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.e5511a7327f7","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.f8fc2656538e","color":"white"}
tellraw @s [{"translate":"rfm.text.e23901ca6167","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.3b3eba764519","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.fec78276991c","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

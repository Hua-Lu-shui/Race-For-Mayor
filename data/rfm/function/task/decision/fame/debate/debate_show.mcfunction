#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.10b7c15be027","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.09ae26e8c0fc","color":"white"}
tellraw @s [{"translate":"rfm.text.7aa5675da85e","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.506bd1f8256d","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.5aa62a286558","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

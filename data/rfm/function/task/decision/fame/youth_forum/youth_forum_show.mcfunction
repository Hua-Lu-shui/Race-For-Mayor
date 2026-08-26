#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.f260dc9563d7","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.2705ffb84146","color":"white"}
tellraw @s [{"translate":"rfm.text.9c9294425617","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.3764acbf6ad5","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.38791633267a","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

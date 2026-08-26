#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.d74c4fa6b4b7","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.d63bda21520d","color":"white"}
tellraw @s [{"translate":"rfm.text.0804eebd6dc7","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.b8ceca9dbb0b","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.faa831085c88","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

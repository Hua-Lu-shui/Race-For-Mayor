#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.1d92558823d4","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.81892cf0386b","color":"white"}
tellraw @s [{"translate":"rfm.text.1fdae26cdaa7","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.e8e6c5fa76a1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.92b1f45321f3","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.abc1b262c977","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.652471fabfa5","color":"white"}
tellraw @s [{"translate":"rfm.text.8c7ba0cc1e57","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.6b75baf4b42f","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.cefb626e2561","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

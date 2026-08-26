#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.e22a8c7ec1de","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.593a849d219b","color":"white"}

tellraw @s [{"translate":"rfm.text.b2ddb35a47f7","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.06f20e91bca5","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.5001c1396921","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

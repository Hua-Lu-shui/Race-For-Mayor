#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.cd9a162b97bf","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.0c5a28b47ec1","color":"white"}
tellraw @s [{"translate":"rfm.text.a6d451c41d12","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.9ce17cb3a99a","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.6c26f79bba4e","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.04fb82132999","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.ea2051841fe4","color":"white"}

tellraw @s [{"translate":"rfm.text.1b1c3c556eb2","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.fdb4b57d87e9","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.6009563b93f2","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

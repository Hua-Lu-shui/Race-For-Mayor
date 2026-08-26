#展示经济决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.3dbe16878f34","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.9559a832f191","color":"white"}

tellraw @s [{"translate":"rfm.text.b9819490a3a1","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.f612148de05b","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.1e28d22c587f","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

#展示名誉决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.420c9bb1e66f","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.469853928047","color":"white"}
tellraw @s [{"translate":"rfm.text.bc75d73ec509","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.2b048f60add2","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.a0ef325d782c","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

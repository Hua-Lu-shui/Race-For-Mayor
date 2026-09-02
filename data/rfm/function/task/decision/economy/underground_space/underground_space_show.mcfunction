scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.2baf2a6832c6","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.0fe0ba9280a9","color":"white"}
tellraw @s [{"translate":"rfm.text.2b7e63d2d73f","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.d83d0cf8c6bc","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.291d000e6263","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

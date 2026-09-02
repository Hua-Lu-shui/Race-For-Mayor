scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.6509b1dacf56","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.c72133f4d65f","color":"white"}
tellraw @s [{"translate":"rfm.text.f936f52e39ad","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.9e4d8fe7010b","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.ec02dc534b1f","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

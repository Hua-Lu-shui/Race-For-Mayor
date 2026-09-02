scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.d41f75f4a92e","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.ad6803646856","color":"white"}
tellraw @s [{"translate":"rfm.text.5039c34171b3","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.1480c1f7a676","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.d7a6016f1b0e","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

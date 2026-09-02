scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.199ea73f839a","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.6734bb41e261","color":"white"}
tellraw @s [{"translate":"rfm.text.f0a53ddef1e4","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.c77947fa1d23","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.1edf948051db","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

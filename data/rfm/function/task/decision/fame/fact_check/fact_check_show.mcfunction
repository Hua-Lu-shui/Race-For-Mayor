scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.0e1701e83459","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.f45223004786","color":"white"}
tellraw @s [{"translate":"rfm.text.0dab4a6b33e6","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.27ec1c6df53e","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.35655d6677b7","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

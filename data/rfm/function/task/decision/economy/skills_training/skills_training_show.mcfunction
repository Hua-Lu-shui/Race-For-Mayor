scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.b50e760d80a2","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.c864124d5e76","color":"white"}
tellraw @s [{"translate":"rfm.text.1fa1a372b441","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.45ed66a5be11","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.fad1ab56c330","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

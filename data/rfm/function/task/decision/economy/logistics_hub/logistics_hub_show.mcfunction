scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.a79767d6b7b9","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.24b484ecab56","color":"white"}
tellraw @s [{"translate":"rfm.text.669921ff56f7","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.623dc774e6a3","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.6778327d0ad7","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

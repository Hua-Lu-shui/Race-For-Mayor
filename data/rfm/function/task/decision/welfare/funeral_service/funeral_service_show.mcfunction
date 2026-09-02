scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.b36275c74803","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.1217e786bc68","color":"white"}
tellraw @s [{"translate":"rfm.text.d328dc296830","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.6f302b80742e","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.86ad1a22d4f5","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

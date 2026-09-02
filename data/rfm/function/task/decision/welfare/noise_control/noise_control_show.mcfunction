scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.904d2eb9e286","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.378b92519d21","color":"white"}
tellraw @s [{"translate":"rfm.text.bfdfde1838c0","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.e4f0a05f4561","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.c95881135aa3","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

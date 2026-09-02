scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.07db00f817fc","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.d2a381bd905f","color":"white"}
tellraw @s [{"translate":"rfm.text.89b9a0594d5b","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.3a11a8e87e91","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.fe5365736eb9","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

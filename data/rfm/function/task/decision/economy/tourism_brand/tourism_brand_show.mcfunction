scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.8ce055a4adb1","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.c24ff66d0bbd","color":"white"}
tellraw @s [{"translate":"rfm.text.15e91276bdd7","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.eaf3dafbbbdd","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.b9c4268b413f","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

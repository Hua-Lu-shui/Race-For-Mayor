scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.2580510fd1bf","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.96d312a83adb","color":"white"}
tellraw @s [{"translate":"rfm.text.014d33eb9ac2","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.b0c1c4aee1cf","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.e9daf3196ea8","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

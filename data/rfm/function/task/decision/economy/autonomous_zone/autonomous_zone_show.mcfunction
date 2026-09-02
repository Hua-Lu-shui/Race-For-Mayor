scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.8d1ecadbe3a4","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.5364d462ad32","color":"white"}
tellraw @s [{"translate":"rfm.text.ca8b3a53542f","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.11995c69de13","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.89091f8b5ef4","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

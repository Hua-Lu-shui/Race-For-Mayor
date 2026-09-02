scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.356a4cef3614","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.01e8f7c30e46","color":"white"}
tellraw @s [{"translate":"rfm.text.4614716995ac","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.95c33b0d6a02","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.4ebfb4ae2ffc","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

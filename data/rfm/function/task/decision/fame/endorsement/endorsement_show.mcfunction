scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.17e76d60eb77","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.79a2b5f89b65","color":"white"}
tellraw @s [{"translate":"rfm.text.5eab0ce1ec32","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.7243f559eab1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.1352aae4a462","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

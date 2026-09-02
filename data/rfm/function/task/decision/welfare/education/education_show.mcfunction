scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.eb4001063d43","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.8deae204f26e","color":"white"}

tellraw @s [{"translate":"rfm.text.fffcfa9b749f","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.905b55f4f686","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.89fc6c82e89b","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

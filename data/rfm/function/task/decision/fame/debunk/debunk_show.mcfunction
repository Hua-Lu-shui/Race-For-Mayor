scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.05da65842794","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.31e5205a234b","color":"white"}
tellraw @s [{"translate":"rfm.text.aa51fb45576f","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.8b7f95253b2c","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.fd86d94ded15","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

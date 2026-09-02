scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.53ac0f012a7b","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.855041a5d723","color":"white"}
tellraw @s [{"translate":"rfm.text.bea0329c8745","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.4d0fbf573416","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.653ee92617b0","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

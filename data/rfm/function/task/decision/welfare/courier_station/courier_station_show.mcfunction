scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.b6ef58fc7301","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.b0554f8bc1af","color":"white"}
tellraw @s [{"translate":"rfm.text.884674e41a29","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.00e53174125c","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.f1c3e303b3c5","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

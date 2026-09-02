scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.b567921fb7a0","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.63c29f2dd4b4","color":"white"}
tellraw @s [{"translate":"rfm.text.0c8ddcac092a","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.4ea81f9df48d","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.98dab23253e8","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

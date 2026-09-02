scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.a951edfbecb7","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.a930ddf62afd","color":"white"}
tellraw @s [{"translate":"rfm.text.d78bb27be261","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.2f6e8895f24e","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.5b1c5c290248","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

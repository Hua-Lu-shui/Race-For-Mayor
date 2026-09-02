scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.fb2d5f0bc5cc","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.1a34e777c590","color":"white"}
tellraw @s [{"translate":"rfm.text.2693ed9566f6","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.0527aee5b5e7","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.3c27a387da5a","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

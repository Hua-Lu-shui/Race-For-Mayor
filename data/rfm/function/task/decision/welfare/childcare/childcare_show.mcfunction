scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.45b57a5151af","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.4fb21361df90","color":"white"}
tellraw @s [{"translate":"rfm.text.73be813e70bc","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.b3f7f35f9199","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.6608c39039b7","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

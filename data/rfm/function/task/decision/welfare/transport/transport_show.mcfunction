scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.0f15bbab583d","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.2587f53e568f","color":"white"}

tellraw @s [{"translate":"rfm.text.298e70aaadc6","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.f409ffd4f01d","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.b533cde19d25","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.53ffc00b6f3b","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.696a591d1fd5","color":"white"}

tellraw @s [{"translate":"rfm.text.e55a2adfd99d","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.ccb1eb9165e1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.03f548e79c17","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

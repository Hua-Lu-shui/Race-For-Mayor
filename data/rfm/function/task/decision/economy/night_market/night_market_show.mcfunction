scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.fe0e977b6bd3","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.d616520d76f2","color":"white"}

tellraw @s [{"translate":"rfm.text.8e84ed6fa5e3","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.ebc17e5e423d","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.f0ca2da1156c","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.43cd3ceed1e5","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.3929b6ca7f02","color":"white"}

tellraw @s [{"translate":"rfm.text.0568f19efd66","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.c3258f0402e6","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.38f4bdeab5a7","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

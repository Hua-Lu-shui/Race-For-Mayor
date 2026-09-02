scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.f8127877f8e2","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.a1e2fbe1bfc5","color":"white"}
tellraw @s [{"translate":"rfm.text.fd93148063de","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.2cba32e61a0d","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.01a65ca88101","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

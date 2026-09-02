scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.f9afdc628c9f","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.8b25f989d44e","color":"white"}
tellraw @s [{"translate":"rfm.text.c4f317370141","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.f5f85a4d9bc7","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.927dce0aaff3","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

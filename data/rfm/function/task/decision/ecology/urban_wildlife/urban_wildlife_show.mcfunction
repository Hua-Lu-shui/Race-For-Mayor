scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.ca7ff70e91a0","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.a4a10d362ccc","color":"white"}
tellraw @s [{"translate":"rfm.text.c6f102056fef","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.f0a24eab4a9b","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.a406a1532d46","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

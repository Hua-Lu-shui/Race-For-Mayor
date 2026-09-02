scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.537815801fa9","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.12ba01f1e92f","color":"white"}
tellraw @s [{"translate":"rfm.text.20557b73610f","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.a059b8b8817d","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.64a55b7273dc","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

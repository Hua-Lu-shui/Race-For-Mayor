scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.b0a87f921836","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.f0a48dee7685","color":"white"}
tellraw @s [{"translate":"rfm.text.5d7d3d85081b","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.2acec9d43fa1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.df2f2a735c35","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.ba959ce63540","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.033e76249f67","color":"white"}
tellraw @s [{"translate":"rfm.text.6d0ed2b93222","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.eff671081f5e","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.94580558f160","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

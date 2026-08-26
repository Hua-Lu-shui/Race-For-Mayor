#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.30e88e16da3a","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.1a697480b6d0","color":"white"}
tellraw @s [{"translate":"rfm.text.edbf4150dbfb","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.6d9e803922d0","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.f6435658572e","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

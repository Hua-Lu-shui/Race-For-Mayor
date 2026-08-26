#展示民生决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.628bc3417be0","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.5762a9f2c50d","color":"white"}
tellraw @s [{"translate":"rfm.text.35c220784759","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.a26cb7d70e9f","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.d12e0f78b58d","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

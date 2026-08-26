#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.1f7697f36b1f","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.a2a2077359b4","color":"white"}
tellraw @s [{"translate":"rfm.text.e8f52c164454","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.73b7a11894b1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.dc91883a2b0d","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

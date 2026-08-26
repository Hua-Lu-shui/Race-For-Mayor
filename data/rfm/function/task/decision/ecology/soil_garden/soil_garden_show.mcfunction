#展示生态决策任务的背景和三个可选方案
scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
tellraw @s {"translate":"rfm.text.760829d7bae4","color":"gold","bold":true}
tellraw @s {"translate":"rfm.text.c43102196797","color":"white"}
tellraw @s [{"translate":"rfm.text.910dbbe0d078","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]
tellraw @s [{"translate":"rfm.text.843deacdd2b7","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]
tellraw @s [{"translate":"rfm.text.4f0cce4b746f","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
#显示任务背景以及选项
tellraw @s {"translate":"rfm.text.274799a83e8d","color":"gold","bold":true}

tellraw @s {"translate":"rfm.text.00f9a3be562c","color":"white"}

tellraw @s [{"translate":"rfm.text.1de75296cd06","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.45b8b1a27cc9","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.49a04b120af2","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]


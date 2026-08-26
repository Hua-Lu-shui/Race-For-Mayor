scoreboard players set @s decision_choice 0
scoreboard players enable @s decision_choice
#显示任务背景以及选项
tellraw @s {"translate":"rfm.text.51b1fbb28bbe","color":"gold","bold":true}

tellraw @s {"translate":"rfm.text.bc9876fbe0b4","color":"white"}

tellraw @s [{"translate":"rfm.text.b791144d0296","color":"red","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 1"}}]

tellraw @s [{"translate":"rfm.text.98c54b204baa","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 2"}}]

tellraw @s [{"translate":"rfm.text.df82d9fb9be6","color":"green","clickEvent":{"action":"run_command","value":"/trigger decision_choice set 3"}}]

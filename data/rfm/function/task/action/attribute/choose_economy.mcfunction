scoreboard players set @s action_attribute_choice 0
#经济行动任务使用701至705
function rfm:task/action/attribute/roll_economy
execute if score @s action_task matches 701 run scoreboard players set #701 action_task_used 1
execute if score @s action_task matches 702 run scoreboard players set #702 action_task_used 1
execute if score @s action_task matches 703 run scoreboard players set #703 action_task_used 1
execute if score @s action_task matches 704 run scoreboard players set #704 action_task_used 1
execute if score @s action_task matches 705 run scoreboard players set #705 action_task_used 1
scoreboard players add #economy_used action_task_used 1
tellraw @s {"text":"你已选择经济行动任务，请等待选择倒计时结束后公布详细教程。","color":"yellow"}

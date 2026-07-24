scoreboard players set @s action_attribute_choice 0
#民生行动任务使用801至805
function rfm:task/action/attribute/roll_welfare
execute if score @s action_task matches 801 run scoreboard players set #801 action_task_used 1
execute if score @s action_task matches 802 run scoreboard players set #802 action_task_used 1
execute if score @s action_task matches 803 run scoreboard players set #803 action_task_used 1
execute if score @s action_task matches 804 run scoreboard players set #804 action_task_used 1
execute if score @s action_task matches 805 run scoreboard players set #805 action_task_used 1
scoreboard players add #welfare_used action_task_used 1
tellraw @s {"text":"你已选择民生行动任务，请等待选择倒计时结束后公布详细教程。","color":"red"}

scoreboard players set @s action_attribute_choice 0
#名誉行动任务使用601至605
function rfm:task/action/attribute/roll_fame
execute if score @s action_task matches 601 run scoreboard players set #601 action_task_used 1
execute if score @s action_task matches 602 run scoreboard players set #602 action_task_used 1
execute if score @s action_task matches 603 run scoreboard players set #603 action_task_used 1
execute if score @s action_task matches 604 run scoreboard players set #604 action_task_used 1
execute if score @s action_task matches 605 run scoreboard players set #605 action_task_used 1
scoreboard players add #fame_used action_task_used 1
tellraw @s {"text":"你已选择名誉行动任务，请等待选择倒计时结束后公布详细教程。","color":"aqua"}

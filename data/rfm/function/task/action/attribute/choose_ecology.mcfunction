scoreboard players set @s action_attribute_choice 0
#生态行动任务使用901至905
function rfm:task/action/attribute/roll_ecology
execute if score @s action_task matches 901 run scoreboard players set #901 action_task_used 1
execute if score @s action_task matches 902 run scoreboard players set #902 action_task_used 1
execute if score @s action_task matches 903 run scoreboard players set #903 action_task_used 1
execute if score @s action_task matches 904 run scoreboard players set #904 action_task_used 1
execute if score @s action_task matches 905 run scoreboard players set #905 action_task_used 1
scoreboard players add #ecology_used action_task_used 1
tellraw @s {"text":"你已选择生态行动任务，请等待选择倒计时结束后公布详细教程。","color":"green"}

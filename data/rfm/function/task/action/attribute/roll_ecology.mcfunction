#在本局尚未出现的生态行动中随机抽取一个
execute store result score @s action_task run random value 901..905
execute if score @s action_task matches 901 if score #901 action_task_used matches 1 run function rfm:task/action/attribute/roll_ecology
execute if score @s action_task matches 902 if score #902 action_task_used matches 1 run function rfm:task/action/attribute/roll_ecology
execute if score @s action_task matches 903 if score #903 action_task_used matches 1 run function rfm:task/action/attribute/roll_ecology
execute if score @s action_task matches 904 if score #904 action_task_used matches 1 run function rfm:task/action/attribute/roll_ecology
execute if score @s action_task matches 905 if score #905 action_task_used matches 1 run function rfm:task/action/attribute/roll_ecology

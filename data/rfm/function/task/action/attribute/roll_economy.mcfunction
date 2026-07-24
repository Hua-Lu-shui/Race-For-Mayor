#在本局尚未出现的经济行动中随机抽取一个
execute store result score @s action_task run random value 701..705
execute if score @s action_task matches 701 if score #701 action_task_used matches 1 run function rfm:task/action/attribute/roll_economy
execute if score @s action_task matches 702 if score #702 action_task_used matches 1 run function rfm:task/action/attribute/roll_economy
execute if score @s action_task matches 703 if score #703 action_task_used matches 1 run function rfm:task/action/attribute/roll_economy
execute if score @s action_task matches 704 if score #704 action_task_used matches 1 run function rfm:task/action/attribute/roll_economy
execute if score @s action_task matches 705 if score #705 action_task_used matches 1 run function rfm:task/action/attribute/roll_economy

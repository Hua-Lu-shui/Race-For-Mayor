#在本局尚未出现的民生行动中随机抽取一个
execute store result score @s action_task run random value 801..805
execute if score @s action_task matches 801 if score #801 action_task_used matches 1 run function rfm:task/action/attribute/roll_welfare
execute if score @s action_task matches 802 if score #802 action_task_used matches 1 run function rfm:task/action/attribute/roll_welfare
execute if score @s action_task matches 803 if score #803 action_task_used matches 1 run function rfm:task/action/attribute/roll_welfare
execute if score @s action_task matches 804 if score #804 action_task_used matches 1 run function rfm:task/action/attribute/roll_welfare
execute if score @s action_task matches 805 if score #805 action_task_used matches 1 run function rfm:task/action/attribute/roll_welfare

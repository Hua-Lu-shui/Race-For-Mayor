#在本局尚未出现的名誉行动中随机抽取一个
execute store result score @s action_task run random value 601..605
execute if score @s action_task matches 601 if score #601 action_task_used matches 1 run function rfm:task/action/attribute/roll_fame
execute if score @s action_task matches 602 if score #602 action_task_used matches 1 run function rfm:task/action/attribute/roll_fame
execute if score @s action_task matches 603 if score #603 action_task_used matches 1 run function rfm:task/action/attribute/roll_fame
execute if score @s action_task matches 604 if score #604 action_task_used matches 1 run function rfm:task/action/attribute/roll_fame
execute if score @s action_task matches 605 if score #605 action_task_used matches 1 run function rfm:task/action/attribute/roll_fame

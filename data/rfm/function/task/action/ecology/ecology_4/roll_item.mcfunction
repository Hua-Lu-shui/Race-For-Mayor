#先随机一个编号；如果本局已经出现过，就递归重抽
execute store result score @s trash_item_id run random value 1..10
execute if score @s trash_item_id matches 1 if score @s trash_used_1 matches 1 run function rfm:task/action/ecology/ecology_4/roll_item
execute if score @s trash_item_id matches 2 if score @s trash_used_2 matches 1 run function rfm:task/action/ecology/ecology_4/roll_item
execute if score @s trash_item_id matches 3 if score @s trash_used_3 matches 1 run function rfm:task/action/ecology/ecology_4/roll_item
execute if score @s trash_item_id matches 4 if score @s trash_used_4 matches 1 run function rfm:task/action/ecology/ecology_4/roll_item
execute if score @s trash_item_id matches 5 if score @s trash_used_5 matches 1 run function rfm:task/action/ecology/ecology_4/roll_item
execute if score @s trash_item_id matches 6 if score @s trash_used_6 matches 1 run function rfm:task/action/ecology/ecology_4/roll_item
execute if score @s trash_item_id matches 7 if score @s trash_used_7 matches 1 run function rfm:task/action/ecology/ecology_4/roll_item
execute if score @s trash_item_id matches 8 if score @s trash_used_8 matches 1 run function rfm:task/action/ecology/ecology_4/roll_item
execute if score @s trash_item_id matches 9 if score @s trash_used_9 matches 1 run function rfm:task/action/ecology/ecology_4/roll_item
execute if score @s trash_item_id matches 10 if score @s trash_used_10 matches 1 run function rfm:task/action/ecology/ecology_4/roll_item

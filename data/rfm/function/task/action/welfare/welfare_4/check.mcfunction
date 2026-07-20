#判断所选线路是否恰好达到核定发车人数
scoreboard players set @s bus_valid 0
execute if score @s bus_answer matches 1 if score @s bus_queue_1 matches 3 run scoreboard players set @s bus_valid 1
execute if score @s bus_answer matches 2 if score @s bus_queue_2 matches 4 run scoreboard players set @s bus_valid 1
execute if score @s bus_answer matches 3 if score @s bus_queue_3 matches 5 run scoreboard players set @s bus_valid 1
execute if score @s bus_valid matches 1 run function rfm:task/action/welfare/welfare_4/correct
execute if score @s bus_valid matches 0 run function rfm:task/action/welfare/welfare_4/wrong

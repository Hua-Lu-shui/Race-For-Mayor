#随机选择一条线路生成一名乘客；该线路已有6人时本次不再生成
scoreboard players set @s bus_spawned 0
execute store result score @s bus_spawn_line run random value 1..3
execute if score @s bus_spawn_line matches 1 run function rfm:task/action/welfare/welfare_4/spawn_line_1
execute if score @s bus_spawn_line matches 2 run function rfm:task/action/welfare/welfare_4/spawn_line_2
execute if score @s bus_spawn_line matches 3 run function rfm:task/action/welfare/welfare_4/spawn_line_3
execute store result score @s bus_spawn_time run random value 15..30

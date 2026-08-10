#推进60秒倒计时和随机乘客到站计时
scoreboard players remove @s bus_time 1
scoreboard players remove @s bus_spawn_time 1
execute store result bossbar rfm:bus_time value run scoreboard players get @s bus_time

execute if score @s bus_spawn_time matches ..0 run function rfm:task/action/welfare/welfare_4/spawn_passenger

#检测三个发车按钮
scoreboard players set @s bus_answer 0
execute if block 241 -59 -53 minecraft:stone_button[powered=true] run scoreboard players set @s bus_answer 1
execute if block 241 -59 -63 minecraft:stone_button[powered=true] run scoreboard players set @s bus_answer 2
execute if block 241 -59 -73 minecraft:stone_button[powered=true] run scoreboard players set @s bus_answer 3
execute if score @s bus_answer matches 1..3 run function rfm:task/action/welfare/welfare_4/check

execute if score @s bus_state matches 1 if score @s bus_time matches ..0 run function rfm:task/action/welfare/welfare_4/result

bossbar set rfm:bus_time visible false
clear @s minecraft:paper[minecraft:custom_data={bus_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{bus_ready:1}}}}]

scoreboard players set @s bus_queue_1 0
scoreboard players set @s bus_queue_2 0
scoreboard players set @s bus_queue_3 0
scoreboard players set @s bus_spawn_line 0
scoreboard players set @s bus_spawn_time 0
scoreboard players set @s bus_spawned 0
scoreboard players set @s bus_answer 0
scoreboard players set @s bus_valid 0
scoreboard players set @s bus_success 0
scoreboard players set @s bus_wrong 0
scoreboard players set @s bus_time 0
scoreboard players set @s bus_state 0
scoreboard players set @s bus_delay 0
function rfm:task/action/sequence/complete_current

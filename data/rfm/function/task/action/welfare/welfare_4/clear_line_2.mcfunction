execute as @e[type=minecraft:villager,tag=rfm_bus_line_2] run data merge entity @s {Invisible:1b,NoGravity:1b}
execute as @e[type=minecraft:villager,tag=rfm_bus_line_2] at @s run tp @s ~ -3 ~
tag @e[type=minecraft:villager,tag=rfm_bus_line_2] remove rfm_bus_line_2
scoreboard players set @s bus_queue_2 0

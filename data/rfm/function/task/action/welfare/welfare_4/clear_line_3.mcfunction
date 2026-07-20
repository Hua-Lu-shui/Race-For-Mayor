#让已发车乘客立即消失并移到站台地下，返回办公室后再统一清理
execute as @e[type=minecraft:villager,tag=rfm_bus_line_3] run data merge entity @s {Invisible:1b,NoGravity:1b}
execute as @e[type=minecraft:villager,tag=rfm_bus_line_3] at @s run tp @s ~ -3 ~
tag @e[type=minecraft:villager,tag=rfm_bus_line_3] remove rfm_bus_line_3
scoreboard players set @s bus_queue_3 0

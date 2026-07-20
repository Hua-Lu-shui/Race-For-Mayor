#随机抽取一个尚未故障的井盖；未满六个时继续抽取
execute store result score @s manhole_pick run random value 1..12
execute if score @s manhole_pick matches 1 unless entity @e[type=minecraft:interaction,tag=rfm_manhole_1] run function rfm:task/action/welfare/welfare_5/activate_1
execute if score @s manhole_pick matches 2 unless entity @e[type=minecraft:interaction,tag=rfm_manhole_2] run function rfm:task/action/welfare/welfare_5/activate_2
execute if score @s manhole_pick matches 3 unless entity @e[type=minecraft:interaction,tag=rfm_manhole_3] run function rfm:task/action/welfare/welfare_5/activate_3
execute if score @s manhole_pick matches 4 unless entity @e[type=minecraft:interaction,tag=rfm_manhole_4] run function rfm:task/action/welfare/welfare_5/activate_4
execute if score @s manhole_pick matches 5 unless entity @e[type=minecraft:interaction,tag=rfm_manhole_5] run function rfm:task/action/welfare/welfare_5/activate_5
execute if score @s manhole_pick matches 6 unless entity @e[type=minecraft:interaction,tag=rfm_manhole_6] run function rfm:task/action/welfare/welfare_5/activate_6
execute if score @s manhole_pick matches 7 unless entity @e[type=minecraft:interaction,tag=rfm_manhole_7] run function rfm:task/action/welfare/welfare_5/activate_7
execute if score @s manhole_pick matches 8 unless entity @e[type=minecraft:interaction,tag=rfm_manhole_8] run function rfm:task/action/welfare/welfare_5/activate_8
execute if score @s manhole_pick matches 9 unless entity @e[type=minecraft:interaction,tag=rfm_manhole_9] run function rfm:task/action/welfare/welfare_5/activate_9
execute if score @s manhole_pick matches 10 unless entity @e[type=minecraft:interaction,tag=rfm_manhole_10] run function rfm:task/action/welfare/welfare_5/activate_10
execute if score @s manhole_pick matches 11 unless entity @e[type=minecraft:interaction,tag=rfm_manhole_11] run function rfm:task/action/welfare/welfare_5/activate_11
execute if score @s manhole_pick matches 12 unless entity @e[type=minecraft:interaction,tag=rfm_manhole_12] run function rfm:task/action/welfare/welfare_5/activate_12
execute if score @s manhole_selected matches ..5 run function rfm:task/action/welfare/welfare_5/select_one

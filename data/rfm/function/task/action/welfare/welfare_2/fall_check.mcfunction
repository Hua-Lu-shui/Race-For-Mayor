#掉落后扣除3秒并返回本路线最近检查点
scoreboard players remove @s fitness_time 60
tellraw @s {"text":"掉出赛道，返回最近检查点并扣除3秒！","color":"red","bold":true}
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1
execute if score @s fitness_course matches 1 run function rfm:task/action/welfare/welfare_2/respawn_1
execute if score @s fitness_course matches 2 run function rfm:task/action/welfare/welfare_2/respawn_2
execute if score @s fitness_course matches 3 run function rfm:task/action/welfare/welfare_2/respawn_3

execute if score @s cheer_time matches 601.. run scoreboard players set @s cheer_spawn 24
execute if score @s cheer_time matches 301..600 run scoreboard players set @s cheer_spawn 20
execute if score @s cheer_time matches ..300 run scoreboard players set @s cheer_spawn 16

execute store result score @s cheer_type run random value 1..100
execute if score @s cheer_type matches 1..65 run function rfm:task/action/fame/fame_5/spawn_flower
execute if score @s cheer_type matches 66..100 run function rfm:task/action/fame/fame_5/spawn_egg

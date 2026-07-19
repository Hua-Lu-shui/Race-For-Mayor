#前15秒每1.2秒一次，中间15秒每1秒一次，最后15秒每0.8秒一次
execute if score @s cheer_time matches 601.. run scoreboard players set @s cheer_spawn 24
execute if score @s cheer_time matches 301..600 run scoreboard players set @s cheer_spawn 20
execute if score @s cheer_time matches ..300 run scoreboard players set @s cheer_spawn 16

#约65%概率抛出鲜花，35%概率抛出鸡蛋
execute store result score @s cheer_type run random value 1..100
execute if score @s cheer_type matches 1..65 run function rfm:task/action/fame/fame_5/spawn_flower
execute if score @s cheer_type matches 66..100 run function rfm:task/action/fame/fame_5/spawn_egg

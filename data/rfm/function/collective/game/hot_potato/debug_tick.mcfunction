scoreboard players set @a[tag=rfm_potato_holder] potato_hold 0
scoreboard players set #group_time group_time 200
execute as @e[type=minecraft:interaction,tag=rfm_hot_potato_target] at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:0.7} ~ ~1 ~ 0 0.7 0 0 2 force @a[tag=rfm_participant]
execute as @e[type=minecraft:interaction,tag=rfm_hot_potato_target] if data entity @s attack run function rfm:collective/game/hot_potato/debug_attack

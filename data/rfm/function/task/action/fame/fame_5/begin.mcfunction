scoreboard players set @s cheer_score 0
scoreboard players set @s cheer_combo 0
scoreboard players set @s cheer_time 900
scoreboard players set @s cheer_spawn 10
scoreboard players set @s cheer_type 0
scoreboard players set @s cheer_state 1

bossbar set rfm:cheer_time players @a
bossbar set rfm:cheer_time max 900
bossbar set rfm:cheer_time value 900
bossbar set rfm:cheer_time visible true
playsound minecraft:entity.villager.celebrate master @a 720 -60 104 1 1 1

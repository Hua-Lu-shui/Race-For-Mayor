scoreboard players set @s cheer_score 0
scoreboard players set @s cheer_combo 0
scoreboard players set @s cheer_time 900
scoreboard players set @s cheer_spawn 10
scoreboard players set @s cheer_type 0
scoreboard players set @s cheer_state 1

bossbar set rfm:cheer_time players @a[tag=rfm_participant]
bossbar set rfm:cheer_time max 900
bossbar set rfm:cheer_time value 900
bossbar set rfm:cheer_time visible true
playsound minecraft:block.note_block.pling master @a[tag=rfm_participant] 232 -59 -18 1 1.2 1

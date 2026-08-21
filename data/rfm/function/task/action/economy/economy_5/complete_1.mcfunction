#完成陈康的岗位匹配
scoreboard players set @s employment_done_1 1
scoreboard players add @s employment_completed 1
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{resume_id:1}}}}]
tellraw @a[tag=rfm_participant] [{"text":"匹配成功：","color":"green"},{"text":"陈康","color":"yellow","bold":true}]
playsound minecraft:entity.player.levelup master @a[tag=rfm_participant] ~ ~ ~ 0.7 1.5

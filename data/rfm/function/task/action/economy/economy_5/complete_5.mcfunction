#完成唐雨的岗位匹配
scoreboard players set @s employment_done_5 1
scoreboard players add @s employment_completed 1
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{resume_id:5}}}}]
tellraw @a [{"text":"匹配成功：","color":"green"},{"text":"唐雨","color":"yellow","bold":true}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.7 1.5

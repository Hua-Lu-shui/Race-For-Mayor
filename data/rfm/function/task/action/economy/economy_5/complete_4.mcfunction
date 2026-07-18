#完成许安的岗位匹配
scoreboard players set @s employment_done_4 1
scoreboard players add @s employment_completed 1
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{resume_id:4}}}}]
tellraw @a [{"text":"匹配成功：","color":"green"},{"text":"许安","color":"yellow","bold":true}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.7 1.5

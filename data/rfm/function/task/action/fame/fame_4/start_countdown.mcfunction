tellraw @a {"text":"行动玩家已准备完成，公开答疑即将开始！","color":"aqua","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{qa_ready:1}}}}]
scoreboard players set @s qa_state 3
scoreboard players set @s qa_delay 60

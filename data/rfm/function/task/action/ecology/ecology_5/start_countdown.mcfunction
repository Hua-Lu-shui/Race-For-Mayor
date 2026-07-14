tellraw @a {"text":"行动玩家已准备完成，任务即将开始！","color":"green","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{energy_ready:1}}}}]
scoreboard players set @s energy_state 3
scoreboard players set @s energy_delay 60

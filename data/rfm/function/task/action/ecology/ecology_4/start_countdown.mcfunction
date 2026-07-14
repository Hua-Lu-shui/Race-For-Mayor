tellraw @a {"text":"行动玩家已准备完成，任务即将开始！","color":"green","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{trash_ready:1}}}}]
scoreboard players set @s trash_state 3
scoreboard players set @s trash_delay 60

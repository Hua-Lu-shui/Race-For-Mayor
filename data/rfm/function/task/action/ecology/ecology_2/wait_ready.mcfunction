#检测行动玩家丢出的准备空地图
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{sample_ready:1}}}}] run scoreboard players set @s sample_delay 60
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{sample_ready:1}}}}] run scoreboard players set @s sample_state 3
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{sample_ready:1}}}}]

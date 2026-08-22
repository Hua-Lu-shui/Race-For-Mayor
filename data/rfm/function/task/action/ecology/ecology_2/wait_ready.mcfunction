#检测行动玩家是否扔出了“准备完成”纸条
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{sample_ready:1}}}}] run scoreboard players set @s sample_delay 60
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{sample_ready:1}}}}] run scoreboard players set @s sample_state 3
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{sample_ready:1}}}}] run tellraw @a[tag=rfm_participant] {"text":"行动玩家已准备完成，河道取样即将开始！","color":"green","bold":true}
kill @e[type=minecraft:item,distance=..3,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:custom_data":{sample_ready:1}}}}]

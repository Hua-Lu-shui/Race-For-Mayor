#检测行动玩家是否扔出了“准备完成”纸条
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{emission_ready:1}}}}] run scoreboard players set @s emission_delay 60
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{emission_ready:1}}}}] run scoreboard players set @s emission_state 4
execute if entity @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{emission_ready:1}}}}] run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.a8f6e874cf7c","color":"green","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{emission_ready:1}}}}]

tellraw @a[tag=rfm_participant] {"translate":"rfm.text.c80bed82ae72","color":"yellow","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{supply_ready:1}}}}]
scoreboard players set @s supply_state 3
scoreboard players set @s supply_delay 60

tellraw @a[tag=rfm_participant] {"translate":"rfm.text.a16b61907c2a","color":"aqua","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{cheer_ready:1}}}}]
scoreboard players set @s cheer_state 3
scoreboard players set @s cheer_delay 60

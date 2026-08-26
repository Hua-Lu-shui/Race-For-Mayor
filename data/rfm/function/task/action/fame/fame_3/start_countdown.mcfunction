tellraw @a[tag=rfm_participant] {"translate":"rfm.text.162150857ea9","color":"aqua","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{photo_ready:1}}}}]
scoreboard players set @s photo_state 3
scoreboard players set @s photo_delay 60

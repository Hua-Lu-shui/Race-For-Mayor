tellraw @a[tag=rfm_participant] {"text":"行动玩家已准备完成，市民合影即将开始！","color":"aqua","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{photo_ready:1}}}}]
scoreboard players set @s photo_state 3
scoreboard players set @s photo_delay 60

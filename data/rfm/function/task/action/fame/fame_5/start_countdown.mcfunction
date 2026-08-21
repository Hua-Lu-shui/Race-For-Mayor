tellraw @a[tag=rfm_participant] {"text":"行动玩家已准备完成，市民应援即将开始！","color":"aqua","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{cheer_ready:1}}}}]
scoreboard players set @s cheer_state 3
scoreboard players set @s cheer_delay 60

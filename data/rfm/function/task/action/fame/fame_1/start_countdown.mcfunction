#公布准备完成并启动开场倒计时
tellraw @a {"text":"行动玩家已准备完成，街头演讲即将开始！","color":"aqua","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{speech_ready:1}}}}]
scoreboard players set @s speech_state 3
scoreboard players set @s speech_delay 60

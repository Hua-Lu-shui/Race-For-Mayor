#公布准备完成并启动开场倒计时
tellraw @a {"text":"行动玩家已准备完成，井盖巡检即将开始！","color":"red","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{manhole_ready:1}}}}]
scoreboard players set @s manhole_state 3
scoreboard players set @s manhole_delay 60

#公布准备完成并启动开场倒计时
tellraw @a {"text":"行动玩家已准备完成，领操即将开始！","color":"red","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{exercise_ready:1}}}}]
scoreboard players set @s exercise_state 3
scoreboard players set @s exercise_delay 60

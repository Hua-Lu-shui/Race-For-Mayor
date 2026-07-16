#公布生态行动任务3准备完成并启动开场倒计时
tellraw @a {"text":"行动玩家已准备完成，任务即将开始！","color":"green","bold":true}
kill @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{park_ready:1}}}}]
scoreboard players set @s park_state 3
scoreboard players set @s park_delay 60

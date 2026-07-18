#公布经济行动任务4准备完成并启动开场倒计时
tellraw @a {"text":"行动玩家已准备完成，商圈巡查即将开始！","color":"yellow","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{supply_ready:1}}}}]
scoreboard players set @s supply_state 3
scoreboard players set @s supply_delay 60

#公布经济行动任务1准备完成并启动开场倒计时
tellraw @a[tag=rfm_participant] {"text":"行动玩家已准备完成，市场调研即将开始！","color":"yellow","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{market_ready:1}}}}]
scoreboard players set @s market_state 3
scoreboard players set @s market_delay 60

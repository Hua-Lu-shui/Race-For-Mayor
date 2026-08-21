#清除准备地图并启动开场倒计时
tellraw @a[tag=rfm_participant] {"text":"行动玩家已准备完成，社区拜访即将开始！","color":"aqua","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{visit_ready:1}}}}]
scoreboard players set @s visit_state 3
scoreboard players set @s visit_delay 60

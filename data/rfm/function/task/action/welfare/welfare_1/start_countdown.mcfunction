#公布准备完成并启动开场倒计时
tellraw @a[tag=rfm_participant] {"text":"行动玩家已准备完成，任务即将开始！","color":"red","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{hospital_ready:1}}}}]
scoreboard players set @s hospital_state 3
scoreboard players set @s hospital_delay 60

#公布准备完成并启动开场倒计时
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.0d1afde8d52c","color":"red","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{bus_ready:1}}}}]
scoreboard players set @s bus_state 3
scoreboard players set @s bus_delay 60

#公布准备完成并启动开场倒计时
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.4cd536b6e6c2","color":"aqua","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{speech_ready:1}}}}]
scoreboard players set @s speech_state 3
scoreboard players set @s speech_delay 60

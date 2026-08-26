#公布经济行动任务2准备完成并启动开场倒计时
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.30d52d4f6212","color":"yellow","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{negotiation_ready:1}}}}]
scoreboard players set @s negotiation_state 3
scoreboard players set @s negotiation_delay 60

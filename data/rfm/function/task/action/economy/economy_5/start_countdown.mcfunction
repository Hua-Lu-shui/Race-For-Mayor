#公布经济行动任务5准备完成并启动开场倒计时
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.c2407884842d","color":"yellow","bold":true}
kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{employment_ready:1}}}}]
scoreboard players set @s employment_state 3
scoreboard players set @s employment_delay 60

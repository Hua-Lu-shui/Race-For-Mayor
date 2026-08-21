#清除当前维护点的确认纸条，记录进度并补发下一张确认纸条
kill @e[type=minecraft:item,distance=..3,limit=1,nbt={Item:{components:{"minecraft:custom_data":{park_check:1}}}}]
scoreboard players add @s park_progress 1
bossbar set rfm:park_time name [{"text":"公园维护  ·  已完成 ","color":"green"},{"score":{"name":"@s","objective":"park_progress"},"color":"yellow"},{"text":" / 6","color":"green"}]
particle minecraft:happy_villager ~ ~1 ~ 0.45 0.45 0.45 0.02 12 force @a[tag=rfm_participant]
execute if score @s park_progress matches ..5 run item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"text":"维护确认","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"在当前维护点附近按Q丢出","color":"gray","italic":false}'],minecraft:custom_data={park_check:1}] 1

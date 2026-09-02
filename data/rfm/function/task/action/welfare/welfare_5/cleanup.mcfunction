bossbar set rfm:cooking_time visible false
clear @s minecraft:paper[minecraft:custom_data={cooking_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{cooking_ready:1}}}}]

scoreboard players set @s cooking_clicks 0
scoreboard players set @s cooking_time 0
scoreboard players set @s cooking_state 0
scoreboard players set @s cooking_delay 0
function rfm:task/action/sequence/complete_current

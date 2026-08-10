#清理民生行动任务5的临时状态和界面；厨房实体在返回办公室后统一清理
bossbar set rfm:cooking_time visible false
clear @s minecraft:map[minecraft:custom_data={cooking_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{cooking_ready:1}}}}]

scoreboard players set @s cooking_clicks 0
scoreboard players set @s cooking_time 0
scoreboard players set @s cooking_state 0
scoreboard players set @s cooking_delay 0
function rfm:task/action/sequence/complete_current

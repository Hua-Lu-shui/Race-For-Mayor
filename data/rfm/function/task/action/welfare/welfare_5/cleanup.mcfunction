#清理民生行动任务5的临时状态和界面；场景实体在返回办公室后统一清理
bossbar set rfm:manhole_time visible false
clear @s minecraft:map[minecraft:custom_data={manhole_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{manhole_ready:1}}}}]

scoreboard players set @s manhole_selected 0
scoreboard players set @s manhole_pick 0
scoreboard players set @s manhole_repaired 0
scoreboard players set @s manhole_time 0
scoreboard players set @s manhole_state 0
scoreboard players set @s manhole_delay 0
function rfm:task/action/sequence/complete_current

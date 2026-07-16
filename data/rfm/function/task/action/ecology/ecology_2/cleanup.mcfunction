#清理生态行动任务2的临时状态和界面
bossbar set rfm:sample_time visible false
clear @s minecraft:map[minecraft:custom_data={sample_ready:1}]
clear @s minecraft:glass_bottle
clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{sample_ready:1}}}}]

scoreboard players set @s sample_time 0
scoreboard players set @s sample_delay 0
scoreboard players set @s sample_state 0

function rfm:task/action/sequence/complete_current

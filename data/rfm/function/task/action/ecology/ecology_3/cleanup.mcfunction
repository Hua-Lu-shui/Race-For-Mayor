#清理生态行动任务3的临时状态和界面
bossbar set rfm:park_time visible false
clear @s minecraft:paper[minecraft:custom_data={park_ready:1}]
clear @s minecraft:paper[minecraft:custom_data={park_check:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{park_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{park_check:1}}}}]
scoreboard players set @s park_time 0
scoreboard players set @s park_delay 0
scoreboard players set @s park_state 0
function rfm:task/action/sequence/complete_current

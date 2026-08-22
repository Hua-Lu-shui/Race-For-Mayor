#清理民生行动任务2的临时状态和界面
bossbar set rfm:fitness_time visible false
clear @s minecraft:paper[minecraft:custom_data={fitness_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{fitness_ready:1}}}}]

scoreboard players set @s fitness_course 0
scoreboard players set @s fitness_checkpoint 0
scoreboard players set @s fitness_time 0
scoreboard players set @s fitness_state 0
scoreboard players set @s fitness_delay 0
function rfm:task/action/sequence/complete_current

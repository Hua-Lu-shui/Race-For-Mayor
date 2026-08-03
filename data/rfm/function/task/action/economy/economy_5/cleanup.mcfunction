#清理经济行动任务5的临时状态和界面
bossbar set rfm:employment_time visible false
clear @s minecraft:map[minecraft:custom_data={employment_ready:1}]
clear @s minecraft:paper[minecraft:custom_data~{rfm_resume:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{employment_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_resume:1}}}}]
advancement revoke @s only rfm:employment_pickup_1
advancement revoke @s only rfm:employment_pickup_2
advancement revoke @s only rfm:employment_pickup_3
advancement revoke @s only rfm:employment_pickup_4
advancement revoke @s only rfm:employment_pickup_5
scoreboard players set @s employment_layout 0
scoreboard players set @s employment_completed 0
scoreboard players set @s employment_done_1 0
scoreboard players set @s employment_done_2 0
scoreboard players set @s employment_done_3 0
scoreboard players set @s employment_done_4 0
scoreboard players set @s employment_done_5 0
scoreboard players set @s employment_time 0
scoreboard players set @s employment_delay 0
scoreboard players set @s employment_state 0
function rfm:task/action/sequence/complete_current

scoreboard players remove @s trash_time 1
execute store result bossbar rfm:trash_time value run scoreboard players get @s trash_time

#检查四个箱子中是否出现带任务标记的物品
scoreboard players set @s trash_answer 0
execute if items block 236 -59 65 container.* *[minecraft:custom_data~{trash_item:1}] run scoreboard players set @s trash_answer 1
execute if items block 232 -59 69 container.* *[minecraft:custom_data~{trash_item:1}] run scoreboard players set @s trash_answer 2
execute if items block 236 -59 73 container.* *[minecraft:custom_data~{trash_item:1}] run scoreboard players set @s trash_answer 3
execute if items block 240 -59 69 container.* *[minecraft:custom_data~{trash_item:1}] run scoreboard players set @s trash_answer 4

execute if score @s trash_answer matches 1.. run function rfm:task/action/ecology/ecology_4/check
execute if score @s trash_state matches 1 if score @s trash_time matches ..0 run function rfm:task/action/ecology/ecology_4/result

#限制玩家留在集体行动区域内
execute as @a at @s unless entity @s[x=1084,y=-64,z=84,dx=32,dy=10,dz=32] run tp @s 1100 -59 100

#抵达正确响应区
execute if score #group_target group_target matches 1 as @a[scores={group_answered=0}] at @s if block ~ ~-1 ~ minecraft:light_blue_concrete run function rfm:collective/correct
execute if score #group_target group_target matches 2 as @a[scores={group_answered=0}] at @s if block ~ ~-1 ~ minecraft:yellow_concrete run function rfm:collective/correct
execute if score #group_target group_target matches 3 as @a[scores={group_answered=0}] at @s if block ~ ~-1 ~ minecraft:red_concrete run function rfm:collective/correct
execute if score #group_target group_target matches 4 as @a[scores={group_answered=0}] at @s if block ~ ~-1 ~ minecraft:green_concrete run function rfm:collective/correct

#首次进入错误响应区会扣1分并返回中心
execute as @a[scores={group_answered=0,group_wrong=0}] at @s if block ~ ~-1 ~ minecraft:light_blue_concrete unless score #group_target group_target matches 1 run function rfm:collective/wrong
execute as @a[scores={group_answered=0,group_wrong=0}] at @s if block ~ ~-1 ~ minecraft:yellow_concrete unless score #group_target group_target matches 2 run function rfm:collective/wrong
execute as @a[scores={group_answered=0,group_wrong=0}] at @s if block ~ ~-1 ~ minecraft:red_concrete unless score #group_target group_target matches 3 run function rfm:collective/wrong
execute as @a[scores={group_answered=0,group_wrong=0}] at @s if block ~ ~-1 ~ minecraft:green_concrete unless score #group_target group_target matches 4 run function rfm:collective/wrong

scoreboard players remove #group_time group_time 1
execute unless entity @a[scores={group_answered=0}] run function rfm:collective/end_prompt
execute if score #group_state group_state matches 1 if score #group_time group_time matches ..0 run function rfm:collective/end_prompt

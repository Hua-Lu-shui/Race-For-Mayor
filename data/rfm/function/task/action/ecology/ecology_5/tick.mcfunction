scoreboard players remove @s energy_time 1
execute store result bossbar rfm:energy_time value run scoreboard players get @s energy_time

#根据四个拉杆状态计算当前供电总量
scoreboard players set @s energy_total 0
execute if block 267 -57 79 minecraft:lever[powered=true] run scoreboard players add @s energy_total 1
execute if block 264 -57 79 minecraft:lever[powered=true] run scoreboard players add @s energy_total 2
execute if block 261 -57 79 minecraft:lever[powered=true] run scoreboard players add @s energy_total 3
execute if block 258 -57 79 minecraft:lever[powered=true] run scoreboard players add @s energy_total 4
bossbar set rfm:energy_time name [{"text":"清洁能源检查  ·  目标 ","color":"green"},{"score":{"name":"@s","objective":"energy_target"},"color":"yellow"},{"text":"  ·  当前 ","color":"green"},{"score":{"name":"@s","objective":"energy_total"},"color":"aqua"},{"text":"  ·  正确 ","color":"green"},{"score":{"name":"@s","objective":"energy_correct"},"color":"gold"}]

#确认按钮按下时提交本轮答案
execute if block 262 -58 74 minecraft:stone_button[powered=true] run function rfm:task/action/ecology/ecology_5/check
execute if score @s energy_state matches 1 if score @s energy_time matches ..0 run function rfm:task/action/ecology/ecology_5/result

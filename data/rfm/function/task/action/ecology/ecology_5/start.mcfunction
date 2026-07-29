#清洁能源场地
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0

#所有玩家进入观战位置，行动玩家站到控制台前
gamemode adventure @a
tp @a 262 -59 70 0 0
tp @s 263 -59 76 0 0

#控制设备
setblock 267 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 264 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 261 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 258 -57 79 minecraft:lever[face=wall,facing=north,powered=false] replace
setblock 262 -58 74 minecraft:stone_button[face=floor,facing=north,powered=false] replace
function rfm:task/action/ecology/ecology_5/create_labels

#初始化任务状态，等待行动玩家确认准备
scoreboard players set @s energy_round 0
scoreboard players set @s energy_target 0
scoreboard players set @s energy_total 0
scoreboard players set @s energy_correct 0
scoreboard players set @s energy_time 0
scoreboard players set @s energy_delay 0
scoreboard players set @s energy_state 2

tellraw @a [{"text":"【生态行动】清洁能源检查","color":"green","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"行动玩家需要根据目标需求开关四个发电设备，使供电总量等于目标，共进行10轮。","color":"white"}
tellraw @a [{"text":"设备数值：","color":"yellow","bold":true},{"text":"太阳能 1，","color":"gold"},{"text":"风力 2，","color":"aqua"},{"text":"水力 3，","color":"blue"},{"text":"储能 4","color":"light_purple"}]

title @s clear
title @s title {"text":"清洁能源检查","color":"green","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={energy_ready:1}] 1

#当前已完成小游戏：城市议题响应赛。先搭建场地，再传送全员并介绍规则
fill 1084 -59 84 1116 -50 116 minecraft:air
fill 1084 -60 84 1116 -60 116 minecraft:polished_andesite
fill 1097 -60 97 1103 -60 103 minecraft:white_concrete
fill 1097 -60 87 1103 -60 92 minecraft:light_blue_concrete
fill 1108 -60 97 1113 -60 103 minecraft:yellow_concrete
fill 1097 -60 108 1103 -60 113 minecraft:red_concrete
fill 1087 -60 97 1092 -60 103 minecraft:green_concrete
setblock 1100 -50 100 minecraft:light[level=15]

scoreboard players set #group_state group_state 4
scoreboard players set @a group_ready 0
gamemode adventure @a
execute as @a run function rfm:collective/start_ready/lock_position
function rfm:collective/announce

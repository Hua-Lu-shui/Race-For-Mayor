#生成集体行动基础场地（中心：1100 -59 100）
fill 1084 -59 84 1116 -50 116 minecraft:air
fill 1084 -60 84 1116 -60 116 minecraft:polished_andesite
fill 1097 -60 97 1103 -60 103 minecraft:white_concrete
fill 1097 -60 87 1103 -60 92 minecraft:light_blue_concrete
fill 1108 -60 97 1113 -60 103 minecraft:yellow_concrete
fill 1097 -60 108 1103 -60 113 minecraft:red_concrete
fill 1087 -60 97 1092 -60 103 minecraft:green_concrete
setblock 1100 -50 100 minecraft:light[level=15]

scoreboard players set #group_state group_state 0
scoreboard players set #group_prompt group_prompt 0
scoreboard players set @a group_score 0
scoreboard players set @a group_rank 0
scoreboard players set @a group_answered 0
scoreboard players set @a group_wrong 0
gamemode adventure @a
tp @a 1100 -59 100 0 0
title @a title {"text":"准备响应","color":"gold","bold":true}
title @a subtitle [{"text":"名誉","color":"aqua"},{"text":" · ","color":"gray"},{"text":"经济","color":"yellow"},{"text":" · ","color":"gray"},{"text":"民生","color":"red"},{"text":" · ","color":"gray"},{"text":"生态","color":"green"}]
schedule function rfm:collective/countdown_3 60t replace

#临时垃圾分类场地：中心约为248 -60 104，地图完成后替换坐标
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0

#所有玩家进入观战位置，行动玩家进入四个分类箱中央
gamemode adventure @a
#生成可自由走动的空中观战平台
fill 243 -55 112 253 -55 120 minecraft:light_gray_stained_glass
setblock 248 -55 116 minecraft:sea_lantern
fill 243 -54 112 253 -52 112 minecraft:glass
fill 243 -54 120 253 -52 120 minecraft:glass
fill 243 -54 113 243 -52 119 minecraft:glass
fill 253 -54 113 253 -52 119 minecraft:glass
tp @a 248 -54 116 180 25
tp @s 248 -60 104 180 0

#搭建临时测试平台，避免当前坐标没有地面导致玩家坠落
fill 240 -61 96 256 -61 112 minecraft:smooth_stone replace

#放置四个独立箱子并清除旧内容
setblock 244 -60 100 minecraft:chest[facing=south,type=single] replace
setblock 252 -60 100 minecraft:chest[facing=south,type=single] replace
setblock 244 -60 108 minecraft:chest[facing=north,type=single] replace
setblock 252 -60 108 minecraft:chest[facing=north,type=single] replace
function rfm:task/action/ecology/ecology_4/create_labels

#初始化任务状态，等待行动玩家确认准备
scoreboard players set @s trash_round 0
scoreboard players set @s trash_item_id 0
scoreboard players set @s trash_target 0
scoreboard players set @s trash_answer 0
scoreboard players set @s trash_correct 0
scoreboard players set @s trash_time 0
scoreboard players set @s trash_delay 0
scoreboard players set @s trash_state 2

tellraw @a [{"text":"【生态行动】垃圾分类督导","color":"green","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"行动玩家会依次获得10件原版物品。打开对应类别的箱子，把物品放进去；每件物品无论对错只判断一次。","color":"white"}
tellraw @s [{"text":"箱子分类：","color":"yellow","bold":true},{"text":"可回收物、","color":"aqua"},{"text":"有害垃圾、","color":"red"},{"text":"厨余垃圾、","color":"green"},{"text":"其他垃圾","color":"gray"}]

title @s clear
title @s title {"text":"垃圾分类督导","color":"green","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={trash_ready:1}] 1

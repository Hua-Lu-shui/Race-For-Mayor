#垃圾分类场地
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0

#所有玩家进入观战位置
gamemode adventure @a
tp @a 236 -53 66 0 30
tp @s 236 -59 69 180 0

#清除容器正上方的阻挡方块，确保陷阱箱可以打开
setblock 236 -58 65 minecraft:air
setblock 232 -58 69 minecraft:air
setblock 236 -58 73 minecraft:air
setblock 240 -58 69 minecraft:air

#放置四个可储物的陷阱箱；资源包会隐藏箱体，只显示垃圾桶模型
setblock 236 -59 65 minecraft:trapped_chest[facing=south,type=single]{CustomName:'{"text":"可回收物","color":"aqua","bold":true}'} replace
setblock 232 -59 69 minecraft:trapped_chest[facing=east,type=single]{CustomName:'{"text":"有害垃圾","color":"red","bold":true}'} replace
setblock 236 -59 73 minecraft:trapped_chest[facing=north,type=single]{CustomName:'{"text":"厨余垃圾","color":"green","bold":true}'} replace
setblock 240 -59 69 minecraft:trapped_chest[facing=west,type=single]{CustomName:'{"text":"其他垃圾","color":"gray","bold":true}'} replace
function rfm:task/action/ecology/ecology_4/create_labels
function rfm:task/action/ecology/ecology_4/create_models

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
tellraw @a [{"text":"行动玩家","color":"#67D5FF","bold":true},{"text":"会依次获得","color":"white"},{"text":"10件垃圾","color":"#FFCB77"},{"text":"。打开对应类别的垃圾桶，进行","color":"white"},{"text":"正确的垃圾分类","color":"#FFD166","bold":true},{"text":"；每件物品无论对错只判断一次。","color":"white"}]
tellraw @s [{"text":"垃圾桶分类：","color":"#67D5FF","bold":true},{"text":"可回收物、","color":"white"},{"text":"有害垃圾、","color":"white"},{"text":"厨余垃圾、","color":"white"},{"text":"其他垃圾","color":"white"}]

title @s clear
title @s title {"text":"垃圾分类督导","color":"green","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={trash_ready:1}] 1

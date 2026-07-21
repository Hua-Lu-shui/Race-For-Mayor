#在玩家到达前搭建步行街和全部井盖
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0
function rfm:task/action/welfare/welfare_5/create_scene
function rfm:task/action/welfare/welfare_5/create_labels

#初始化任务状态，等待行动玩家确认准备
scoreboard players set @s manhole_selected 0
scoreboard players set @s manhole_pick 0
scoreboard players set @s manhole_repaired 0
scoreboard players set @s manhole_time 0
scoreboard players set @s manhole_state 2
scoreboard players set @s manhole_delay 0

#其他玩家在步行街上方观战，行动玩家站在巡检起点
gamemode adventure @a
#生成可自由走动的空中观战平台
fill 999 -52 118 1009 -52 126 minecraft:light_gray_stained_glass
setblock 1004 -52 122 minecraft:sea_lantern
fill 999 -51 118 1009 -49 118 minecraft:glass
fill 999 -51 126 1009 -49 126 minecraft:glass
fill 999 -51 119 999 -49 125 minecraft:glass
fill 1009 -51 119 1009 -49 125 minecraft:glass
tp @a 1004 -51 122 180 30
tp @s 1004 -60 117 180 0

tellraw @a [{"text":"【民生行动】井盖安全巡检","color":"red","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"寻找步行街上打开的故障井盖，对准竖起的铁活板门连续点击。每个井盖需要维修20次，第20次点击后会自动合上。60秒内尽量修复全部6个井盖。","color":"white"}

title @s clear
title @s title {"text":"井盖安全巡检","color":"red","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"red","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={manhole_ready:1}] 1

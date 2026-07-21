#临时公园维护场地：中心约为224 -60 102，地图完成后替换坐标
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0
gamemode adventure @a
#生成可自由走动的空中观战平台
fill 219 -55 110 229 -55 118 minecraft:light_gray_stained_glass
setblock 224 -55 114 minecraft:sea_lantern
fill 219 -54 110 229 -52 110 minecraft:glass
fill 219 -54 118 229 -52 118 minecraft:glass
fill 219 -54 111 219 -52 117 minecraft:glass
fill 229 -54 111 229 -52 117 minecraft:glass
tp @a 224 -54 114 180 25
tp @s 220 -60 96 0 0

function rfm:task/action/ecology/ecology_3/create_labels
scoreboard players set @s park_progress 0
scoreboard players set @s park_time 0
scoreboard players set @s park_delay 0
scoreboard players set @s park_state 2

tellraw @a [{"text":"【生态行动】公园维护","color":"green","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"行动玩家需要依次前往6个维护点，在点位附近丢出“维护确认”纸条。全部完成或时间耗尽后结算。","color":"white"}
title @s clear
title @s title {"text":"公园维护","color":"green","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={park_ready:1}] 1

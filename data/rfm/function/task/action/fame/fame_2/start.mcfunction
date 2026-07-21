#搭建竖向社区，并在玩家到场前生成全部居民、门牌和楼梯
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0
function rfm:task/action/fame/fame_2/create_scene
function rfm:task/action/fame/fame_2/create_residents
function rfm:task/action/fame/fame_2/create_labels
function rfm:task/action/fame/fame_2/reset_buttons

scoreboard players set @s visit_route 0
scoreboard players set @s visit_step 0
scoreboard players set @s visit_target 0
scoreboard players set @s visit_answer 0
scoreboard players set @s visit_wrong 0
scoreboard players set @s visit_time 0
scoreboard players set @s visit_delay 0
scoreboard players set @s visit_state 2

#其他玩家从正面观看整栋楼，行动玩家从一楼中央出发
gamemode adventure @a
#生成可自由走动的空中观战平台
fill 531 -30 116 541 -30 124 minecraft:light_gray_stained_glass
setblock 536 -30 120 minecraft:sea_lantern
fill 531 -29 116 541 -27 116 minecraft:glass
fill 531 -29 124 541 -27 124 minecraft:glass
fill 531 -29 117 531 -27 123 minecraft:glass
fill 541 -29 117 541 -27 123 minecraft:glass
tp @a 536 -29 120 180 35
tp @s 536 -60 103 180 0

tellraw @a [{"text":"【名誉行动】社区拜访","color":"aqua","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"查看拜访记录，按照其中5个门牌号的顺序按响门铃。楼梯按右、左、右交替分布；按错门铃会扣除3秒，累计按错3次直接失败。","color":"white"}

title @s clear
title @s title {"text":"社区拜访","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={visit_ready:1}] 1

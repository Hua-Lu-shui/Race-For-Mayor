#在玩家到场前搭建临时摄影场地并生成居民
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0
function rfm:task/action/fame/fame_3/create_scene
function rfm:task/action/fame/fame_3/create_residents
function rfm:task/action/fame/fame_3/create_labels
function rfm:task/action/fame/fame_3/reset_buttons

scoreboard players set @s photo_selected 0
scoreboard players set @s photo_previous 0
scoreboard players set @s photo_position 0
scoreboard players set @s photo_slot_1 0
scoreboard players set @s photo_slot_2 0
scoreboard players set @s photo_slot_3 0
scoreboard players set @s photo_slot_4 0
scoreboard players set @s photo_slot_5 0
scoreboard players set @s photo_target_1 0
scoreboard players set @s photo_target_2 0
scoreboard players set @s photo_target_3 0
scoreboard players set @s photo_target_4 0
scoreboard players set @s photo_target_5 0
scoreboard players set @s photo_match 0
scoreboard players set @s photo_attempt 0
scoreboard players set @s photo_success 0
scoreboard players set @s photo_time 0
scoreboard players set @s photo_seconds 0
scoreboard players set @s photo_delay 0
scoreboard players set @s photo_state 2

advancement revoke @s only rfm:photo_select_1
advancement revoke @s only rfm:photo_select_2
advancement revoke @s only rfm:photo_select_3
advancement revoke @s only rfm:photo_select_4
advancement revoke @s only rfm:photo_select_5
advancement revoke @s only rfm:photo_select_6
advancement revoke @s only rfm:photo_select_7
advancement revoke @s only rfm:photo_select_8
advancement revoke @s only rfm:photo_position_1
advancement revoke @s only rfm:photo_position_2
advancement revoke @s only rfm:photo_position_3
advancement revoke @s only rfm:photo_position_4
advancement revoke @s only rfm:photo_position_5

#其他玩家在摄影区后方俯视，行动玩家在控制区出发
gamemode adventure @a
#生成可自由走动的空中观战平台
fill 591 -52 115 601 -52 123 minecraft:light_gray_stained_glass
setblock 596 -52 119 minecraft:sea_lantern
fill 591 -51 115 601 -49 115 minecraft:glass
fill 591 -51 123 601 -49 123 minecraft:glass
fill 591 -51 116 591 -49 122 minecraft:glass
fill 601 -51 116 601 -49 122 minecraft:glass
tp @a 596 -51 119 180 30
tp @s 596 -60 112 180 0

tellraw @a [{"text":"【名誉行动】市民合影","color":"aqua","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"右键居民进行选择，再右键对应的青色脚底方块安排位置；可随时重新选择和调整。排好后按下快门。","color":"white"}
tellraw @a {"text":"首次提交完全正确可得6点名誉；首次有误可继续调整，第二次完全正确可得4点名誉。两次错误或45秒耗尽则失败。","color":"gray"}

title @s clear
title @s title {"text":"市民合影","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={photo_ready:1}] 1

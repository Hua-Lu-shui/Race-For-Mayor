#在玩家到达前清理并搭建随机健身赛道
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0
function rfm:task/action/welfare/welfare_2/create_scene
function rfm:task/action/welfare/welfare_2/select_course
function rfm:task/action/welfare/welfare_2/create_labels

#初始化任务状态，等待行动玩家确认准备
scoreboard players set @s fitness_checkpoint 0
scoreboard players set @s fitness_time 0
scoreboard players set @s fitness_state 2
scoreboard players set @s fitness_delay 0
scoreboard players set @s fitness_target_1 0
scoreboard players set @s fitness_target_2 0
scoreboard players set @s fitness_target_3 0

#其他玩家从赛道上方观战，行动玩家进入本局随机赛道起点
gamemode adventure @a
#生成可自由走动的空中观战平台
fill 827 -43 128 837 -43 136 minecraft:light_gray_stained_glass
setblock 832 -43 132 minecraft:sea_lantern
fill 827 -42 128 837 -40 128 minecraft:glass
fill 827 -42 136 837 -40 136 minecraft:glass
fill 827 -42 129 827 -40 135 minecraft:glass
fill 837 -42 129 837 -40 135 minecraft:glass
tp @a 832 -42 132 180 35
function rfm:task/action/welfare/welfare_2/teleport_start

tellraw @a [{"text":"【民生行动】全民健身挑战","color":"red","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a [{"text":"依次完成","color":"white"},{"text":"跨栏、平衡木、攀爬、射箭和跳水冲线","color":"#67D5FF","bold":true},{"text":"。掉出赛道会返回最近检查点并扣除","color":"white"},{"text":"3秒","color":"#FFCB77"},{"text":"。","color":"white"}]

title @s clear
title @s title {"text":"全民健身挑战","color":"red","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"red","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={fitness_ready:1}] 1

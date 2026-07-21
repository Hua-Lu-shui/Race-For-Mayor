#在玩家到达前搭建公交站并创建线路标签
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0
function rfm:task/action/welfare/welfare_4/create_scene
function rfm:task/action/welfare/welfare_4/create_labels
function rfm:task/action/welfare/welfare_4/reset_buttons

#初始化任务状态，等待行动玩家确认准备
scoreboard players set @s bus_queue_1 0
scoreboard players set @s bus_queue_2 0
scoreboard players set @s bus_queue_3 0
scoreboard players set @s bus_spawn_line 0
scoreboard players set @s bus_spawn_time 0
scoreboard players set @s bus_spawned 0
scoreboard players set @s bus_answer 0
scoreboard players set @s bus_valid 0
scoreboard players set @s bus_success 0
scoreboard players set @s bus_wrong 0
scoreboard players set @s bus_time 0
scoreboard players set @s bus_state 2
scoreboard players set @s bus_delay 0

#其他玩家在站台上方观战，行动玩家站在调度区
gamemode adventure @a
#生成可自由走动的空中观战平台
fill 943 -52 118 953 -52 126 minecraft:light_gray_stained_glass
setblock 948 -52 122 minecraft:sea_lantern
fill 943 -51 118 953 -49 118 minecraft:glass
fill 943 -51 126 953 -49 126 minecraft:glass
fill 943 -51 119 943 -49 125 minecraft:glass
fill 953 -51 119 953 -49 125 minecraft:glass
tp @a 948 -51 122 180 30
function rfm:task/action/welfare/welfare_4/teleport_center

tellraw @a [{"text":"【民生行动】公交站调度","color":"red","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"乘客会随机进入三条候车队伍。红线满3人、黄线满4人、蓝线满5人时，按下对应按钮发车。提前或超载发车会清空该队并扣除2秒；60秒内正确发车6次即可完成。","color":"white"}

title @s clear
title @s title {"text":"公交站调度","color":"red","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"red","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={bus_ready:1}] 1

#在玩家到达前搭建操场并生成学生和动作标签
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0
function rfm:task/action/welfare/welfare_3/create_scene
function rfm:task/action/welfare/welfare_3/create_students
function rfm:task/action/welfare/welfare_3/create_labels

#初始化任务状态，等待行动玩家确认准备
scoreboard players set @s exercise_round 1
scoreboard players set @s exercise_length 4
scoreboard players set @s exercise_input 0
scoreboard players set @s exercise_answer 0
scoreboard players set @s exercise_target 0
scoreboard players set @s exercise_wrong 0
scoreboard players set @s exercise_time 0
scoreboard players set @s exercise_state 2
scoreboard players set @s exercise_delay 0
scoreboard players set @s exercise_armed 0
scoreboard players set @s exercise_preview 0

#其他玩家在操场上方观战，行动玩家站在四色踏板中央
gamemode adventure @a
#生成可自由走动的空中观战平台
fill 895 -52 118 905 -52 126 minecraft:light_gray_stained_glass
setblock 900 -52 122 minecraft:sea_lantern
fill 895 -51 118 905 -49 118 minecraft:glass
fill 895 -51 126 905 -49 126 minecraft:glass
fill 895 -51 119 895 -49 125 minecraft:glass
fill 905 -51 119 905 -49 125 minecraft:glass
tp @a 900 -51 122 180 30
function rfm:task/action/welfare/welfare_3/teleport_center

tellraw @a [{"text":"【民生行动】课间操领队","color":"red","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a [{"text":"观察系统依次展示的动作，再按","color":"white"},{"text":"原顺序踩下四色踏板","color":"#67D5FF","bold":true},{"text":"。共","color":"white"},{"text":"三轮","color":"#FFCB77"},{"text":"，踩错扣除","color":"white"},{"text":"2秒","color":"#FFCB77"},{"text":"并从本轮第一个动作重新输入；连续同色时也要先离开踏板。","color":"white"}]

title @s clear
title @s title {"text":"课间操领队","color":"red","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"red","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={exercise_ready:1}] 1

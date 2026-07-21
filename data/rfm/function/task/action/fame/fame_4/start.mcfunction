#在玩家到场前搭建临时答疑场地并生成四名记者
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0
function rfm:task/action/fame/fame_4/create_scene
function rfm:task/action/fame/fame_4/create_reporters
function rfm:task/action/fame/fame_4/create_labels

scoreboard players set @s qa_round 0
scoreboard players set @s qa_target 0
scoreboard players set @s qa_previous 0
scoreboard players set @s qa_correct 0
scoreboard players set @s qa_time 0
scoreboard players set @s qa_armed 0
scoreboard players set @s qa_delay 0
scoreboard players set @s qa_state 2

#其他玩家从南侧俯视答疑台，行动玩家站在中央
gamemode adventure @a
#生成可自由走动的空中观战平台
fill 655 -52 117 665 -52 125 minecraft:light_gray_stained_glass
setblock 660 -52 121 minecraft:sea_lantern
fill 655 -51 117 665 -49 117 minecraft:glass
fill 655 -51 125 665 -49 125 minecraft:glass
fill 655 -51 118 655 -49 124 minecraft:glass
fill 665 -51 118 665 -49 124 minecraft:glass
tp @a 660 -51 121 180 30
tp @s 660 -60 104 180 0

tellraw @a [{"text":"【名誉行动】公开答疑","color":"aqua","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"记者发光并出现粒子后，你只有3秒转向该记者，再重新按下一次潜行。按下瞬间会锁定答案，方向错误不能补救。必须留在中央答疑台内，共进行8次提问。","color":"white"}
tellraw @a {"text":"成功回应7至8次可得6点名誉，成功5至6次可得4点名誉，成功不足5次则失败。","color":"gray"}

title @s clear
title @s title {"text":"公开答疑","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={qa_ready:1}] 1

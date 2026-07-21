#搭建社区医院场地，并在玩家到达前生成窗口、工作人员和标签
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0
function rfm:task/action/welfare/welfare_1/create_scene
function rfm:task/action/welfare/welfare_1/create_labels

#初始化任务状态，等待行动玩家确认准备
scoreboard players set @s hospital_round 0
scoreboard players set @s hospital_case 0
scoreboard players set @s hospital_target 0
scoreboard players set @s hospital_answer 0
scoreboard players set @s hospital_correct 0
scoreboard players set @s hospital_time 0
scoreboard players set @s hospital_delay 0
scoreboard players set @s hospital_state 2

#其他玩家从候诊区上方观战，行动玩家站在三个分诊窗口前
gamemode adventure @a
#生成可自由走动的空中观战平台
fill 755 -52 116 765 -52 124 minecraft:light_gray_stained_glass
setblock 760 -52 120 minecraft:sea_lantern
fill 755 -51 116 765 -49 116 minecraft:glass
fill 755 -51 124 765 -49 124 minecraft:glass
fill 755 -51 117 755 -49 123 minecraft:glass
fill 765 -51 117 765 -49 123 minecraft:glass
tp @a 760 -51 120 180 30
tp @s 760 -60 113 180 0

tellraw @a [{"text":"【民生行动】医院排队疏导","color":"red","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"阅读患者病历，根据病情把病历放进急诊、优先门诊或普通门诊窗口。每份病历只判断一次，分诊错误会扣除3秒。","color":"white"}

title @s clear
title @s title {"text":"医院排队疏导","color":"red","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"red","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={hospital_ready:1}] 1

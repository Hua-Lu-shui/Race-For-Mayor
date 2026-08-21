#搭建社区医院场地，并在玩家到达前生成窗口、工作人员和标签
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
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
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 119 -58 -77 0 0
tp @s 119 -58 -71 0 0

tellraw @a[tag=rfm_participant] [{"text":"【民生行动】医院排队疏导","color":"red","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"阅读","color":"white"},{"text":"患者病历","color":"#67D5FF","bold":true},{"text":"，根据病情把病历放进","color":"white"},{"text":"急诊、优先门诊或普通门诊窗口","color":"#FFD166","bold":true},{"text":"。每份病历只判断一次。","color":"white"}]

title @s clear
title @s title {"text":"医院排队疏导","color":"red","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"red","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={hospital_ready:1}] 1

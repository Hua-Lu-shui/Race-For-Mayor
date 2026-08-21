#在玩家到场前搭建临时答疑场地并生成四名记者
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
function rfm:task/action/fame/fame_4/create_reporters

scoreboard players set @s qa_round 0
scoreboard players set @s qa_target 0
scoreboard players set @s qa_previous 0
scoreboard players set @s qa_correct 0
scoreboard players set @s qa_time 0
scoreboard players set @s qa_armed 0
scoreboard players set @s qa_delay 0
scoreboard players set @s qa_state 2

#其他玩家从南侧俯视答疑台，行动玩家站在中央
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 204 -53 -21 180 30
tp @s 204 -58 -21 180 0

tellraw @a[tag=rfm_participant] [{"text":"【名誉行动】公开答疑","color":"aqua","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"记者发光并出现粒子后，你只有","color":"white"},{"text":"2秒","color":"#FFCB77","bold":true},{"text":"转向该记者，再重新按下一次潜行。按下瞬间会","color":"white"},{"text":"锁定答案","color":"#67D5FF","bold":true},{"text":"，共进行","color":"white"},{"text":"10次提问","color":"#FFCB77"},{"text":"。","color":"white"}]

title @s clear
title @s title {"text":"公开答疑","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={qa_ready:1}] 1

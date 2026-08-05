#使用现有竖向社区，并在玩家到场前生成全部居民、门牌和门铃
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0
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
tp @a 536 -29 120 180 35
tp @s 536 -60 103 180 0

tellraw @a [{"text":"【名誉行动】社区拜访","color":"aqua","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"查看拜访记录，按照其中5个门牌号的顺序按响门铃。按错门铃会扣除3秒，累计按错3次直接失败。","color":"white"}

title @s clear
title @s title {"text":"社区拜访","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={visit_ready:1}] 1

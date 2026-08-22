#使用现有竖向社区，并在玩家到场前生成门牌和门铃
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
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
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 163 -48 -23 90 30
tp @s 143 -58 -31 0 0

tellraw @a[tag=rfm_participant] [{"text":"【名誉行动】社区拜访","color":"aqua","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"查看","color":"white"},{"text":"拜访记录","color":"#67D5FF","bold":true},{"text":"，按照其中","color":"white"},{"text":"5个门牌号的顺序","color":"#FFD166"},{"text":"按响门铃。按错门铃会扣除","color":"white"},{"text":"3秒","color":"#FFCB77"},{"text":"。","color":"white"}]

title @s clear
title @s title {"text":"社区拜访","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"text":"准备完成","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={visit_ready:1}] 1

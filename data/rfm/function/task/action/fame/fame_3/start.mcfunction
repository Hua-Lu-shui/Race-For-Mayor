#在玩家到场前搭建临时摄影场地并生成居民
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
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
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 180 -52 -23 0 30
tp @s 180 -59 -18 0 0

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.9f09ab4648bc","color":"aqua","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.3064eea9d3b0","color":"#67D5FF","bold":true},{"translate":"rfm.text.1af0946385b1","color":"white"},{"translate":"rfm.text.0f1e64280ef7","color":"#67D5FF"},{"translate":"rfm.text.1f443fce06ab","color":"white"},{"translate":"rfm.text.da4e0a1620c1","color":"#FFD166","bold":true},{"text":"。","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.f9c4cd98b08c","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={photo_ready:1}] 1

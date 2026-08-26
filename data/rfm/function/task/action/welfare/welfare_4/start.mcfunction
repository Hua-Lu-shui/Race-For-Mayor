#在玩家到达前搭建公交站并创建线路标签
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
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
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 233 -52 -63 -90 30
tp @s 244 -59 -63 90 0

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.e34302843531","color":"red","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.6d6cfd6d4491","color":"white"},{"translate":"rfm.text.be87b9315ff6","color":"#67D5FF","bold":true},{"translate":"rfm.text.b59fc486e094","color":"white"},{"translate":"rfm.text.6d7be5426e25","color":"#FFCB77"},{"text":"。","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.7db9d3047a8a","color":"red","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"red","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={bus_ready:1}] 1

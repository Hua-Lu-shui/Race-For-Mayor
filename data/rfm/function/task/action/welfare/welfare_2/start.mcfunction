#初始化固定健身赛道任务
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0

#初始化任务状态，等待行动玩家确认准备
scoreboard players set @s fitness_course 1
scoreboard players set @s fitness_checkpoint 0
scoreboard players set @s fitness_time 0
scoreboard players set @s fitness_state 2
scoreboard players set @s fitness_delay 0

#其他玩家从赛道上方观战，行动玩家进入固定赛道起点
gamemode adventure @a[tag=rfm_participant]

tp @a[tag=rfm_participant] 168 -49 -66 180 30
tp @s 184 -57 -67 90 0

tellraw @a[tag=rfm_participant] [{"text":"【民生行动】全民健身挑战","color":"red","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"在规定时间内完成","color":"white"},{"text":"跨栏、平衡木、攀爬、跳水冲线","color":"#67D5FF","bold":true},{"text":"。站上","color":"white"},{"text":"终点线即算完成。","color":"white"}]

title @s clear
title @s title {"text":"全民健身挑战","color":"red","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"red","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={fitness_ready:1}] 1

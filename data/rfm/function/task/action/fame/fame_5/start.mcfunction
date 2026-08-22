#准备市民应援场地
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
kill @e[tag=rfm_cheer_citizen]

scoreboard players set @s cheer_score 0
scoreboard players set @s cheer_combo 0
scoreboard players set @s cheer_time 0
scoreboard players set @s cheer_delay 0
scoreboard players set @s cheer_spawn 0
scoreboard players set @s cheer_type 0
scoreboard players set @s cheer_state 2

#其他玩家从南侧上空观战，行动玩家进入应援场
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 232 -51 -18 180 32
tp @s 232 -59 -18 180 0

tellraw @a[tag=rfm_participant] [{"text":"【名誉行动】市民应援","color":"aqua","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"追赶并拾取","color":"white"},{"text":"带绿色粒子的鲜花","color":"#67D5FF","bold":true},{"text":"，同时躲开","color":"white"},{"text":"带黄色粒子的鸡蛋","color":"#FFD166","bold":true},{"text":"。鲜花落地后很快消失，被鸡蛋击中会扣1分并清空连击。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"连续接到","color":"white"},{"text":"3朵鲜花","color":"#FFCB77","bold":true},{"text":"额外得1分，连续接到","color":"white"},{"text":"5朵","color":"#FFCB77"},{"text":"再额外得2分。","color":"white"}]

title @s clear
title @s title {"text":"市民应援","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"text":"准备完成","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={cheer_ready:1}] 1

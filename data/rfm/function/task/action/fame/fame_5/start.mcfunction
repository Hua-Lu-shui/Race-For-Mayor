#搭建临时应援场地并生成围观市民
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0
function rfm:task/action/fame/fame_5/create_scene
function rfm:task/action/fame/fame_5/create_citizens

scoreboard players set @s cheer_score 0
scoreboard players set @s cheer_combo 0
scoreboard players set @s cheer_time 0
scoreboard players set @s cheer_delay 0
scoreboard players set @s cheer_spawn 0
scoreboard players set @s cheer_type 0
scoreboard players set @s cheer_state 2

#其他玩家从南侧上空观战，行动玩家进入应援场
gamemode spectator @a
tp @a 720 -49 120 180 32
gamemode adventure @s
tp @s 720 -60 104 180 0

tellraw @a [{"text":"【名誉行动】市民应援","color":"aqua","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"45秒内追赶并拾取带绿色粒子的鲜花，同时躲开带黄色粒子的鸡蛋。鲜花落地后很快消失，被鸡蛋击中会扣1分并清空连击。","color":"white"}
tellraw @a {"text":"连续接到3朵鲜花额外得1分，连续接到5朵再额外得2分。18分以上名誉+6，12至17分名誉+4。","color":"gray"}

title @s clear
title @s title {"text":"市民应援","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={cheer_ready:1}] 1

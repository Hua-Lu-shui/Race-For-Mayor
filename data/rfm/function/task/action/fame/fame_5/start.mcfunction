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
gamemode adventure @a
#生成可自由走动的空中观战平台
fill 715 -50 116 725 -50 124 minecraft:light_gray_stained_glass
setblock 720 -50 120 minecraft:sea_lantern
fill 715 -49 116 725 -47 116 minecraft:glass
fill 715 -49 124 725 -47 124 minecraft:glass
fill 715 -49 117 715 -47 123 minecraft:glass
fill 725 -49 117 725 -47 123 minecraft:glass
tp @a 720 -49 120 180 32
tp @s 720 -60 104 180 0

tellraw @a [{"text":"【名誉行动】市民应援","color":"aqua","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"45秒内追赶并拾取带绿色粒子的鲜花，同时躲开带黄色粒子的鸡蛋。鲜花落地后很快消失，被鸡蛋击中会扣1分并清空连击。","color":"white"}
tellraw @a {"text":"连续接到3朵鲜花额外得1分，连续接到5朵再额外得2分。18分以上名誉+6，12至17分名誉+4。","color":"gray"}

title @s clear
title @s title {"text":"市民应援","color":"aqua","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"aqua","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={cheer_ready:1}] 1

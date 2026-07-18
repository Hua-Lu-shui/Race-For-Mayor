#临时商圈场地：五家店铺、补货木桶和仓库在玩家到场前准备完成
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a next_round_clock 0

function rfm:task/action/economy/economy_4/create_shops

scoreboard players set @s supply_order 0
scoreboard players set @s supply_completed 0
scoreboard players set @s supply_shop_1 0
scoreboard players set @s supply_shop_2 0
scoreboard players set @s supply_shop_3 0
scoreboard players set @s supply_shop_4 0
scoreboard players set @s supply_shop_5 0
scoreboard players set @s supply_time 0
scoreboard players set @s supply_delay 0
scoreboard players set @s supply_state 2
execute store result score @s supply_order run random value 1..3
function rfm:task/action/economy/economy_4/prepare_orders

gamemode spectator @a
tp @a 403 -51 111 0 35
gamemode adventure @s
tp @s 403 -60 108 0 0

tellraw @a [{"text":"【经济行动】商圈巡查","color":"yellow","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a {"text":"查看五家店铺上方的缺货信息，逐个搜索临时仓库里的箱子，找出所需物资并放入对应店铺门口的补货木桶。放错后可以自行取回。","color":"white"}

title @s clear
title @s title {"text":"商圈巡查","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"text":"按Q丢出后开始倒计时","color":"gray","italic":false}'],minecraft:custom_data={supply_ready:1}] 1

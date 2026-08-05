#商圈场地
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

gamemode adventure @a
tp @a 195 -48 19 90 30
tp @s 181 -58 19 -90 0

tellraw @a [{"text":"【经济行动】商圈巡查","color":"yellow","bold":true},{"text":" 行动玩家：","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a [{"text":"查看","color":"white"},{"text":"五家店铺上方的缺货信息","color":"#67D5FF","bold":true},{"text":"，逐个搜索临时仓库里的箱子，找出","color":"white"},{"text":"所需物资","color":"#FFD166","bold":true},{"text":"并放入对应店铺门口的补货木桶。","color":"white"}]

title @s clear
title @s title {"text":"商圈巡查","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:map[minecraft:custom_name='{"text":"准备完成","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"text":"扔出后开始任务","color":"gray","italic":false}'],minecraft:custom_data={supply_ready:1}] 1

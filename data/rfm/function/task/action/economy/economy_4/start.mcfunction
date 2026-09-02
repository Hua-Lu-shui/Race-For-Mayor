scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0

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

gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 195 -48 19 90 30
tp @s 181 -58 19 -90 0
function rfm:task/action/sequence/hide_observers

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.d38e77679758","color":"yellow","bold":true},{"translate":"rfm.text.f3bab73164c2","color":"white"},{"selector":"@s","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.f7acefd2d4cd","color":"white"},{"translate":"rfm.text.2de1f48cb3a4","color":"#67D5FF","bold":true},{"translate":"rfm.text.e28f04252ca2","color":"white"},{"translate":"rfm.text.4521048eace5","color":"#FFD166","bold":true},{"translate":"rfm.text.a33f4fcc275d","color":"white"}]

title @s clear
title @s title {"translate":"rfm.text.e0c9d49f9ac6","color":"yellow","bold":true}
item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_name='{"translate":"rfm.text.34ffc0766113","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.52454e1545d8","color":"gray","italic":false}'],minecraft:custom_data={supply_ready:1}] 1

function rfm:task/action/ecology/ecology_4/roll_item

execute if score @s trash_item_id matches 1 run scoreboard players set @s trash_used_1 1
execute if score @s trash_item_id matches 2 run scoreboard players set @s trash_used_2 1
execute if score @s trash_item_id matches 3 run scoreboard players set @s trash_used_3 1
execute if score @s trash_item_id matches 4 run scoreboard players set @s trash_used_4 1
execute if score @s trash_item_id matches 5 run scoreboard players set @s trash_used_5 1
execute if score @s trash_item_id matches 6 run scoreboard players set @s trash_used_6 1
execute if score @s trash_item_id matches 7 run scoreboard players set @s trash_used_7 1
execute if score @s trash_item_id matches 8 run scoreboard players set @s trash_used_8 1
execute if score @s trash_item_id matches 9 run scoreboard players set @s trash_used_9 1
execute if score @s trash_item_id matches 10 run scoreboard players set @s trash_used_10 1

scoreboard players set @s trash_target 0
execute if score @s trash_item_id matches 1..3 run scoreboard players set @s trash_target 1
execute if score @s trash_item_id matches 4..5 run scoreboard players set @s trash_target 2
execute if score @s trash_item_id matches 6..8 run scoreboard players set @s trash_target 3
execute if score @s trash_item_id matches 9..10 run scoreboard players set @s trash_target 4

execute if score @s trash_item_id matches 1 run item replace entity @s hotbar.4 with minecraft:paper[minecraft:custom_data={trash_item:1}] 1
execute if score @s trash_item_id matches 2 run item replace entity @s hotbar.4 with minecraft:glass_bottle[minecraft:custom_data={trash_item:1}] 1
execute if score @s trash_item_id matches 3 run item replace entity @s hotbar.4 with minecraft:iron_nugget[minecraft:custom_data={trash_item:1}] 1

execute if score @s trash_item_id matches 4 run item replace entity @s hotbar.4 with minecraft:clock[minecraft:custom_data={trash_item:1}] 1
execute if score @s trash_item_id matches 5 run item replace entity @s hotbar.4 with minecraft:compass[minecraft:custom_data={trash_item:1}] 1

execute if score @s trash_item_id matches 6 run item replace entity @s hotbar.4 with minecraft:rotten_flesh[minecraft:custom_data={trash_item:1}] 1
execute if score @s trash_item_id matches 7 run item replace entity @s hotbar.4 with minecraft:poisonous_potato[minecraft:custom_data={trash_item:1}] 1
execute if score @s trash_item_id matches 8 run item replace entity @s hotbar.4 with minecraft:melon_slice[minecraft:custom_data={trash_item:1}] 1

execute if score @s trash_item_id matches 9 run item replace entity @s hotbar.4 with minecraft:brick[minecraft:custom_data={trash_item:1}] 1
execute if score @s trash_item_id matches 10 run item replace entity @s hotbar.4 with minecraft:leather[minecraft:custom_data={trash_item:1}] 1

title @s actionbar [{"translate":"rfm.text.6666f97c70c8","color":"white"},{"score":{"name":"@s","objective":"trash_round"},"color":"yellow"},{"translate":"rfm.text.47f8e2250602","color":"white"}]

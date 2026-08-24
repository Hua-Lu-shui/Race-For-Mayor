#开启自动刷新时保证换成不同藏品；关闭时只在没有待售藏品（开局或上件已购买）时抽取
execute if score #collection_auto_refresh game_setting matches 1 if score @s collection_offer matches 1.. run function rfm:collection/mysterious/refresh_one
execute if score @s collection_offer matches 0 run function rfm:collection/mysterious/sample_offer

execute if score @s room matches 1 positioned -18 -58 -10 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 2 positioned -19 -58 6 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 3 positioned -21 -58 23 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 4 positioned -22 -59 41 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 5 positioned -20 -59 59 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 6 positioned -24 -59 81 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 7 positioned -24 -58 98 run function rfm:collection/mysterious/spawn_at_room
execute if score @s room matches 8 positioned -24 -59 120 run function rfm:collection/mysterious/spawn_at_room

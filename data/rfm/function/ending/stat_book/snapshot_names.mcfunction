data modify storage rfm:stat_book names set value {}
summon minecraft:armor_stand ~ ~ ~ {Tags:["rfm_stat_name_helper"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
execute as @a[scores={stat_book_room=1},limit=1] run loot replace entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] armor.head loot rfm:ending/stat_book/player_name
execute if entity @a[scores={stat_book_room=1},limit=1] run data modify storage rfm:stat_book names.p1 set from entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] ArmorItems[3].components."minecraft:profile".name
execute as @a[scores={stat_book_room=2},limit=1] run loot replace entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] armor.head loot rfm:ending/stat_book/player_name
execute if entity @a[scores={stat_book_room=2},limit=1] run data modify storage rfm:stat_book names.p2 set from entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] ArmorItems[3].components."minecraft:profile".name
execute as @a[scores={stat_book_room=3},limit=1] run loot replace entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] armor.head loot rfm:ending/stat_book/player_name
execute if entity @a[scores={stat_book_room=3},limit=1] run data modify storage rfm:stat_book names.p3 set from entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] ArmorItems[3].components."minecraft:profile".name
execute as @a[scores={stat_book_room=4},limit=1] run loot replace entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] armor.head loot rfm:ending/stat_book/player_name
execute if entity @a[scores={stat_book_room=4},limit=1] run data modify storage rfm:stat_book names.p4 set from entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] ArmorItems[3].components."minecraft:profile".name
execute as @a[scores={stat_book_room=5},limit=1] run loot replace entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] armor.head loot rfm:ending/stat_book/player_name
execute if entity @a[scores={stat_book_room=5},limit=1] run data modify storage rfm:stat_book names.p5 set from entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] ArmorItems[3].components."minecraft:profile".name
execute as @a[scores={stat_book_room=6},limit=1] run loot replace entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] armor.head loot rfm:ending/stat_book/player_name
execute if entity @a[scores={stat_book_room=6},limit=1] run data modify storage rfm:stat_book names.p6 set from entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] ArmorItems[3].components."minecraft:profile".name
execute as @a[scores={stat_book_room=7},limit=1] run loot replace entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] armor.head loot rfm:ending/stat_book/player_name
execute if entity @a[scores={stat_book_room=7},limit=1] run data modify storage rfm:stat_book names.p7 set from entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] ArmorItems[3].components."minecraft:profile".name
execute as @a[scores={stat_book_room=8},limit=1] run loot replace entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] armor.head loot rfm:ending/stat_book/player_name
execute if entity @a[scores={stat_book_room=8},limit=1] run data modify storage rfm:stat_book names.p8 set from entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] ArmorItems[3].components."minecraft:profile".name
item replace entity @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1] armor.head with minecraft:air
kill @e[type=minecraft:armor_stand,tag=rfm_stat_name_helper,distance=..1,limit=1]

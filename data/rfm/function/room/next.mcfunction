execute store result score #room_roll room run random value 1..8

execute if score #room_roll room matches 1 if score #room_1 room matches 0 run scoreboard players set @s room 1
execute if score #room_roll room matches 2 if score #room_2 room matches 0 run scoreboard players set @s room 2
execute if score #room_roll room matches 3 if score #room_3 room matches 0 run scoreboard players set @s room 3
execute if score #room_roll room matches 4 if score #room_4 room matches 0 run scoreboard players set @s room 4
execute if score #room_roll room matches 5 if score #room_5 room matches 0 run scoreboard players set @s room 5
execute if score #room_roll room matches 6 if score #room_6 room matches 0 run scoreboard players set @s room 6
execute if score #room_roll room matches 7 if score #room_7 room matches 0 run scoreboard players set @s room 7
execute if score #room_roll room matches 8 if score #room_8 room matches 0 run scoreboard players set @s room 8

execute if score @s room matches 1 run scoreboard players set #room_1 room 1
execute if score @s room matches 2 run scoreboard players set #room_2 room 1
execute if score @s room matches 3 run scoreboard players set #room_3 room 1
execute if score @s room matches 4 run scoreboard players set #room_4 room 1
execute if score @s room matches 5 run scoreboard players set #room_5 room 1
execute if score @s room matches 6 run scoreboard players set #room_6 room 1
execute if score @s room matches 7 run scoreboard players set #room_7 room 1
execute if score @s room matches 8 run scoreboard players set #room_8 room 1

execute if score @s room matches 0 run function rfm:room/next

execute if score @s room matches 1 run tp @s -18 -59 -10
execute if score @s room matches 2 run tp @s -19 -59 6
execute if score @s room matches 3 run tp @s -21 -59 23
execute if score @s room matches 4 run tp @s -22 -60 41
execute if score @s room matches 5 run tp @s -20 -60 59
execute if score @s room matches 6 run tp @s -24 -60 81
execute if score @s room matches 7 run tp @s -24 -59 98
execute if score @s room matches 8 run tp @s -24 -60 120

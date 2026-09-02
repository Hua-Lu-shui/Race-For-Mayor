execute store result score #selected_game group_game run random value 1..4
execute if score #last_game group_game matches 1 if score #selected_game group_game matches 1 store result score #selected_game group_game run random value 2..4
execute if score #last_game group_game matches 2 if score #selected_game group_game matches 2 store result score #selected_game group_game run random value 1..3
execute if score #last_game group_game matches 2 if score #selected_game group_game matches 2 run scoreboard players set #selected_game group_game 4
execute if score #last_game group_game matches 3 if score #selected_game group_game matches 3 store result score #selected_game group_game run random value 1..3
execute if score #last_game group_game matches 3 if score #selected_game group_game matches 3 run scoreboard players set #selected_game group_game 4
execute if score #last_game group_game matches 4 if score #selected_game group_game matches 4 store result score #selected_game group_game run random value 1..3
scoreboard players operation #last_game group_game = #selected_game group_game
execute if score #selected_game group_game matches 1 run function rfm:collective/game/swimming_race/prepare
execute if score #selected_game group_game matches 2 run function rfm:collective/game/needle_gap/prepare
execute if score #selected_game group_game matches 3 run function rfm:collective/game/fated_draw/prepare
execute if score #selected_game group_game matches 4 run function rfm:collective/game/hot_potato/prepare

execute store result score #selected_game group_game run random value 1..5
scoreboard players set #rerolled group_game 0
execute if score #selected_game group_game = #last_game group_game run scoreboard players set #rerolled group_game 1
execute if score #rerolled group_game matches 1 store result score #selected_game group_game run random value 1..4
execute if score #rerolled group_game matches 1 if score #last_game group_game matches 1 run scoreboard players add #selected_game group_game 1
execute if score #rerolled group_game matches 1 if score #last_game group_game matches 2 if score #selected_game group_game matches 2..4 run scoreboard players add #selected_game group_game 1
execute if score #rerolled group_game matches 1 if score #last_game group_game matches 3 if score #selected_game group_game matches 3..4 run scoreboard players add #selected_game group_game 1
execute if score #rerolled group_game matches 1 if score #last_game group_game matches 4 if score #selected_game group_game matches 4 run scoreboard players add #selected_game group_game 1
scoreboard players operation #last_game group_game = #selected_game group_game
execute if score #selected_game group_game matches 1 run function rfm:collective/game/swimming_race/prepare
execute if score #selected_game group_game matches 2 run function rfm:collective/game/needle_gap/prepare
execute if score #selected_game group_game matches 3 run function rfm:collective/game/fated_draw/prepare
execute if score #selected_game group_game matches 4 run function rfm:collective/game/hot_potato/prepare
execute if score #selected_game group_game matches 5 run function rfm:collective/game/marksman/prepare

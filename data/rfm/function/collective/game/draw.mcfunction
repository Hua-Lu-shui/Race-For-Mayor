#从已完成的小游戏1～3中随机抽取；第8回合不得与第4回合重复
execute store result score #selected_game group_game run random value 1..3
execute if score #last_game group_game matches 1 if score #selected_game group_game matches 1 store result score #selected_game group_game run random value 2..3
execute if score #last_game group_game matches 2 if score #selected_game group_game matches 2 store result score #selected_game group_game run random value 1..2
execute if score #last_game group_game matches 2 if score #selected_game group_game matches 2 run scoreboard players set #selected_game group_game 3
execute if score #last_game group_game matches 3 if score #selected_game group_game matches 3 store result score #selected_game group_game run random value 1..2
scoreboard players operation #last_game group_game = #selected_game group_game
execute if score #selected_game group_game matches 1 run function rfm:collective/game/slot_1/prepare
execute if score #selected_game group_game matches 2 run function rfm:collective/game/slot_2/prepare
execute if score #selected_game group_game matches 3 run function rfm:collective/game/slot_3/prepare

#从5个小游戏槽位中抽取一个；第8回合不会重复第4回合抽中的槽位
execute store result score #selected_game group_game run random value 1..5
execute if score #selected_game group_game = #last_game group_game run return run function rfm:collective/game/draw
scoreboard players operation #last_game group_game = #selected_game group_game

execute if score #selected_game group_game matches 1 run function rfm:collective/game/slot_1/prepare
execute if score #selected_game group_game matches 2 run function rfm:collective/game/slot_2/prepare
execute if score #selected_game group_game matches 3 run function rfm:collective/game/slot_3/prepare
execute if score #selected_game group_game matches 4 run function rfm:collective/game/slot_4/prepare
execute if score #selected_game group_game matches 5 run function rfm:collective/game/slot_5/prepare

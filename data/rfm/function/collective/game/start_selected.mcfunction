#全员丢出“准备开始”纸条后，直接启动抽中的小游戏
execute if score #selected_game group_game matches 1 run function rfm:collective/game/swimming_race/start
execute if score #selected_game group_game matches 2 run function rfm:collective/game/needle_gap/start
execute if score #selected_game group_game matches 3 run function rfm:collective/game/fated_draw/start
execute if score #selected_game group_game matches 4 run function rfm:collective/game/hot_potato/start

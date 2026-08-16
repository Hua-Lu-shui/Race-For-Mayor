#全员丢出“准备开始”地图后，启动抽中的小游戏槽位
execute if score #selected_game group_game matches 1 run function rfm:collective/game/slot_1/start
execute if score #selected_game group_game matches 2 run function rfm:collective/game/slot_2/start
execute if score #selected_game group_game matches 3 run function rfm:collective/game/slot_3/start

#第二阶段准备与开赛倒计时期间调用所选小游戏的锁位函数
#锁位函数只写坐标，不写yaw/pitch，玩家仍可自由转动视角
execute if score #selected_game group_game matches 1 run function rfm:collective/game/swimming_race/lock_position
execute if score #selected_game group_game matches 3 run function rfm:collective/game/fated_draw/lock_position

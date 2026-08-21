#8个起点：准备阶段与倒计时期间每tick按房间编号传送，实现独立锁位
#只写坐标，不写yaw/pitch，以保留玩家视角转动
execute if score @s room matches 1 run tp @s 296 -59 121
execute if score @s room matches 2 run tp @s 300 -59 121
execute if score @s room matches 3 run tp @s 303 -59 124
execute if score @s room matches 4 run tp @s 303 -59 128
execute if score @s room matches 5 run tp @s 300 -59 131
execute if score @s room matches 6 run tp @s 296 -59 131
execute if score @s room matches 7 run tp @s 293 -59 128
execute if score @s room matches 8 run tp @s 293 -59 124

#执行start delay函数对应的游戏流程
#有效开始后移除开始游戏告示牌，直到本局结束并返回大厅才重新生成
scoreboard players set #start_pending phase 1
setblock 49 -50 -13 minecraft:air
#准备时间提示
schedule function rfm:start/wait1 10t
schedule function rfm:start/wait2 40t
schedule function rfm:start/wait3 70t
schedule function rfm:start/wait4 100t
schedule function rfm:start/start 150t



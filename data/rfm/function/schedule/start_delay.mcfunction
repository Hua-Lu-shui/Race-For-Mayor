#执行start delay函数对应的游戏流程
#有效开始后锁定开始流程，告示牌保留但不能重复触发
scoreboard players set #start_pending phase 1
#准备时间提示
schedule function rfm:start/wait1 10t
schedule function rfm:start/wait2 40t
schedule function rfm:start/wait3 70t
schedule function rfm:start/wait4 100t
schedule function rfm:start/start 150t



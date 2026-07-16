#执行room delay函数对应的游戏流程
#执行开始介绍
schedule function rfm:tutorial/start1 30t
schedule function rfm:tutorial/start2 60t
schedule function rfm:tutorial/start3 90t
schedule function rfm:tutorial/start4 120t
#办公室介绍结束后，进入第一轮全员准备
schedule function rfm:round/ready/first 150t

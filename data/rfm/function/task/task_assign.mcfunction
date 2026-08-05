#执行task assign函数对应的游戏流程
#选择任务倒计时设为30秒
scoreboard players set #choose_time choose_time 30
scoreboard players set @a decision_choice 0
#使倒计时条可见，并设置最大值和当前值为30秒
bossbar set rfm:choose_time visible true
bossbar set rfm:choose_time max 30
bossbar set rfm:choose_time value 30
bossbar set rfm:choose_time players @a
bossbar set rfm:choose_time name [{"text":"\uE20E","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE232","font":"rfm:bossbar"},{"text":"任务选择时间","color":"light_purple"}]
schedule function rfm:task/task_choose 1s

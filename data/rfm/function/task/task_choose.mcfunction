#选择倒计时计分板减1
scoreboard players remove #choose_time choose_time 1
#把选择倒计时条的数值同步成选择倒计时计分板
execute store result bossbar rfm:choose_time value run scoreboard players get #choose_time choose_time
#如果还大于 0，1 秒后再次执行自己
execute if score #choose_time choose_time matches 1.. run schedule function rfm:task/task_choose 1s
#如果等于0执行结束函数
execute if score #choose_time choose_time matches ..0 run function rfm:task/task_choose_end
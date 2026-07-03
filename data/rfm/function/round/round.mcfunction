#使用虚拟玩家 #round 来记录当前轮数
scoreboard players add #round round 1
#提示当前轮数
title @a title [{"text":"第一轮","color":"light_purple","bold":true}]
title @a subtitle {"text":"请查看你的任务，并在 30 秒内做出选择","color":"yellow"}
#调用任务分配函数
function rfm:task/task_assign
#调用属性显示函数
execute as @a run function rfm:task/attribute/show


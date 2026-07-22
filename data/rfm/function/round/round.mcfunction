#执行round函数对应的游戏流程
#使用虚拟玩家 #round 来记录当前轮数
scoreboard players add #round round 1
#提示当前轮数
title @a title [{"text":"第 ","color":"white","bold":true},{"score":{"name":"#round","objective":"round"},"color":"light_purple","bold":true},{"text":" 轮","color":"white","bold":true}]
#调用任务分配函数
function rfm:task/task_assign
#分配本轮行动玩家
function rfm:task/action/assign
#行动玩家分别选择自己的行动方向
execute as @a if score @s action_role matches 1 run function rfm:task/action/attribute/show
#非行动玩家选择决策任务方向
execute as @a unless score @s action_player matches 1 run function rfm:task/decision/attribute/show


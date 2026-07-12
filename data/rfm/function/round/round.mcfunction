#使用虚拟玩家 #round 来记录当前轮数
scoreboard players add #round round 1
#提示当前轮数
title @a title [{"text":"第 ","color":"light_purple","bold":true},{"score":{"name":"#round","objective":"round"},"color":"gold","bold":true},{"text":" 轮","color":"light_purple","bold":true}]
#调用任务分配函数
function rfm:task/task_assign
#分配本轮行动玩家
function rfm:task/action/assign
#单人行动玩家和双人队长选择行动方向，双人队员等待队长选择
execute as @a if score @s action_role matches 1 run function rfm:task/action/attribute/show
execute as @a if score @s action_role matches 2 run function rfm:task/action/attribute/show
#非行动玩家选择决策任务方向
execute as @a unless score @s action_player matches 1 run function rfm:task/attribute/show


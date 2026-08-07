#执行round函数对应的游戏流程
#使用虚拟玩家 #round 来记录当前回合数
scoreboard players add #round round 1
#全员丢出准备时钟、正式进入本回合后，先结算企业家的“富人思维”
execute as @a[scores={candidate=2}] run function rfm:ability/business/round_start
#任务开始前记录明星的非名誉属性，供“粉丝效应”在回合收尾时恢复任务造成的下降
execute as @a[scores={candidate=1}] run function rfm:ability/star/snapshot
#回合开始时的藏品效果在天赋之后结算
execute as @a run function rfm:collection/effect/crystal_ball
#提示当前回合数
title @a title [{"text":"第 ","color":"white","bold":true},{"score":{"name":"#round","objective":"round"},"color":"light_purple","bold":true},{"text":" 回合","color":"white","bold":true}]
#调用任务分配函数
function rfm:task/task_assign
#分配本回合行动玩家
function rfm:task/action/assign
#行动玩家分别选择自己的行动方向
execute as @a if score @s action_role matches 1 run function rfm:task/action/attribute/show
#非行动玩家选择决策任务方向
execute as @a unless score @s action_player matches 1 run function rfm:task/decision/attribute/show

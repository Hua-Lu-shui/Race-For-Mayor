#执行round函数对应的游戏流程
#使用虚拟玩家 #round 来记录当前回合数
scoreboard players add #round round 1
#全员丢出准备时钟、正式进入本回合后，先结算企业家的“富人思维”
execute as @a[tag=rfm_participant,scores={candidate=2}] run function rfm:ability/business/round_start
#任务开始前记录明星的非名誉属性，供“粉丝效应”在回合收尾时恢复任务造成的下降
execute as @a[tag=rfm_participant,scores={candidate=1}] run function rfm:ability/star/snapshot
#回合开始时的藏品效果在天赋之后结算
#顺序：概率触发 -> 条件触发 -> 翻倍 -> 其他效果；同层按传说、史诗、稀有、普通
execute as @a[tag=rfm_participant] run function rfm:collection/effect/master_key
execute as @a[tag=rfm_participant] run function rfm:collection/effect/magic_mirror
execute as @a[tag=rfm_participant] if score @s collection_slot1 matches 32 run function rfm:collection/effect/rubiks_cube
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 32 if score @s collection_slot2 matches 32 run function rfm:collection/effect/rubiks_cube
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 32 unless score @s collection_slot2 matches 32 if score @s collection_slot3 matches 32 run function rfm:collection/effect/rubiks_cube
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 32 unless score @s collection_slot2 matches 32 unless score @s collection_slot3 matches 32 if score @s collection_slot4 matches 32 run function rfm:collection/effect/rubiks_cube
execute as @a[tag=rfm_participant] unless score @s collection_slot1 matches 32 unless score @s collection_slot2 matches 32 unless score @s collection_slot3 matches 32 unless score @s collection_slot4 matches 32 if score @s collection_slot5 matches 32 run function rfm:collection/effect/rubiks_cube
execute as @a[tag=rfm_participant] run function rfm:collection/effect/meteorite_fragment
execute as @a[tag=rfm_participant] run function rfm:collection/effect/crystal_ball
execute as @a[tag=rfm_participant] run function rfm:collection/effect/ancient_vase
execute as @a[tag=rfm_participant] run function rfm:collection/effect/unstable_device
execute as @a[tag=rfm_participant] run function rfm:collection/effect/round_start_lowest
execute as @a[tag=rfm_participant] run function rfm:collection/effect/round_start_basic
execute as @a[tag=rfm_participant] run function rfm:collection/effect/succulent
execute as @a[tag=rfm_participant] run function rfm:collection/effect/paper_plane
execute as @a[tag=rfm_participant] run function rfm:collection/effect/monocle
execute as @a[tag=rfm_participant] run function rfm:collection/effect/horn
#提示当前回合数
title @a[tag=rfm_participant] title [{"translate":"rfm.text.f495347d6acf","color":"white","bold":true},{"score":{"name":"#round","objective":"round"},"color":"light_purple","bold":true},{"translate":"rfm.text.9be0dd7897d4","color":"white","bold":true}]
#调用任务分配函数
function rfm:task/task_assign
#分配本回合行动玩家
function rfm:task/action/assign
#行动玩家分别选择自己的行动方向
execute as @a[tag=rfm_participant] if score @s action_role matches 1 run function rfm:task/action/attribute/show
#非行动玩家选择决策任务方向
execute as @a[tag=rfm_participant] unless score @s action_player matches 1 run function rfm:task/decision/attribute/show

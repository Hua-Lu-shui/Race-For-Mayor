execute unless score #group_state group_state matches 1 run return 0

#未淘汰玩家每tick固定在分配点位，但可以自由转动视角
execute as @a[tag=rfm_participant,scores={group_finished=0}] run function rfm:collective/game/hot_potato/lock_position
scoreboard players add @a[tag=rfm_potato_holder,scores={group_finished=0}] potato_hold 1
scoreboard players remove #group_time group_time 1

#严格按“超过3秒”处理：60 tick仍可传出，第61 tick淘汰
execute as @a[tag=rfm_potato_holder,scores={group_finished=0,potato_hold=61..},limit=1] run function rfm:collective/game/hot_potato/eliminate_hold
execute if score #group_state group_state matches 1 if score #group_time group_time matches ..0 as @a[tag=rfm_potato_holder,scores={group_finished=0},limit=1] run function rfm:collective/game/hot_potato/eliminate_music

execute unless score #group_state group_state matches 1 run return 0

execute as @a[tag=rfm_participant,scores={group_finished=0}] run function rfm:collective/game/hot_potato/lock_position
execute if score #hot_potato_debug group_ready matches 1 run function rfm:collective/game/hot_potato/debug_tick
function rfm:collective/game/hot_potato/check_attacks
scoreboard players add @a[tag=rfm_potato_holder,scores={group_finished=0}] potato_hold 1
scoreboard players remove #group_time group_time 1

execute as @a[tag=rfm_potato_holder,scores={group_finished=0,potato_hold=61..},limit=1] run function rfm:collective/game/hot_potato/eliminate_hold
execute if score #group_state group_state matches 1 if score #group_time group_time matches ..0 as @a[tag=rfm_potato_holder,scores={group_finished=0},limit=1] run function rfm:collective/game/hot_potato/eliminate_music

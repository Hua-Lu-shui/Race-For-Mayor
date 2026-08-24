function rfm:collective/game/hot_potato/cleanup
scoreboard players set #group_state group_state 4
scoreboard players set @a[tag=rfm_participant] group_ready 0
gamemode adventure @a[tag=rfm_participant]
function rfm:collective/game/hot_potato/assign_positions
function rfm:collective/game/hot_potato/create_targets
execute as @a[tag=rfm_participant] run function rfm:collective/game/hot_potato/lock_position
function rfm:collective/game/hot_potato/announce

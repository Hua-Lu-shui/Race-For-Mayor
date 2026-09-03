function rfm:collective/game/marksman/cleanup
scoreboard players set #group_state group_state 4
scoreboard players set @a[tag=rfm_participant] group_ready 0
gamemode adventure @a[tag=rfm_participant]
function rfm:collective/game/marksman/assign_positions
execute as @a[tag=rfm_participant] run function rfm:collective/game/marksman/lock_position
function rfm:collective/game/marksman/announce

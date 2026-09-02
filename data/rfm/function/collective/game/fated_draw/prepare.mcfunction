function rfm:collective/game/fated_draw/cleanup
scoreboard players set #group_state group_state 4
scoreboard players set @a[tag=rfm_participant] group_ready 0
gamemode adventure @a[tag=rfm_participant]
execute store result score #online_total player_count run execute if entity @a[tag=rfm_participant]
function rfm:collective/game/fated_draw/create_slips
execute as @a[tag=rfm_participant] run function rfm:collective/game/fated_draw/lock_position
function rfm:collective/game/fated_draw/announce

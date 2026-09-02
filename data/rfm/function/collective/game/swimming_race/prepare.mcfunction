scoreboard players set #group_state group_state 4
scoreboard players set @a[tag=rfm_participant] group_ready 0
gamemode adventure @a[tag=rfm_participant]
execute as @a[tag=rfm_participant] run function rfm:collective/game/swimming_race/lock_position
function rfm:collective/game/swimming_race/announce

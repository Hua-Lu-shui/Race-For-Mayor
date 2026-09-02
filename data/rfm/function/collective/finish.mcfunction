scoreboard players set #group_state group_state 0
execute if score #selected_game group_game matches 1 run function rfm:collective/game/swimming_race/cleanup
execute if score #selected_game group_game matches 2 run function rfm:collective/game/needle_gap/cleanup
execute if score #selected_game group_game matches 3 run function rfm:collective/game/fated_draw/cleanup
execute if score #selected_game group_game matches 4 run function rfm:collective/game/hot_potato/cleanup
scoreboard players set @a[tag=rfm_participant] group_rank 0
scoreboard players set #rank group_rank 0
title @a[tag=rfm_participant] title {"translate":"rfm.text.cfd620854a51","color":"gold","bold":true}
title @a[tag=rfm_participant] subtitle {"translate":"rfm.text.a7a23752acf7","color":"yellow"}
function rfm:item/select/create_room
gamemode adventure @a[tag=rfm_participant]
tp @a[tag=rfm_participant] 56 -59 -55 0 0
function rfm:collective/rank_next

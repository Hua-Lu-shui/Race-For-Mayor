scoreboard players set @a[tag=rfm_participant] potato_pos 0
tag @a[tag=rfm_participant] remove rfm_hot_potato_assigned
tag @a[tag=rfm_participant] remove rfm_hot_potato_assigning
scoreboard players set #next potato_pos 1
function rfm:collective/game/hot_potato/assign_next

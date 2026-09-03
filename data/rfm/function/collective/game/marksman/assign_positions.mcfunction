scoreboard players set @a[tag=rfm_participant] marksman_pos 0
tag @a[tag=rfm_participant] remove rfm_marksman_assigned
tag @a[tag=rfm_participant] remove rfm_marksman_assigning
scoreboard players set #next marksman_pos 1
function rfm:collective/game/marksman/assign_next

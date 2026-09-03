tag @a[tag=rfm_participant,tag=!rfm_marksman_assigned] remove rfm_marksman_assigning
tag @a[tag=rfm_participant,tag=!rfm_marksman_assigned,sort=random,limit=1] add rfm_marksman_assigning
scoreboard players operation @a[tag=rfm_marksman_assigning,limit=1] marksman_pos = #next marksman_pos
tag @a[tag=rfm_marksman_assigning,limit=1] add rfm_marksman_assigned
tag @a[tag=rfm_marksman_assigning] remove rfm_marksman_assigning
scoreboard players add #next marksman_pos 1
execute if score #next marksman_pos matches ..8 if entity @a[tag=rfm_participant,tag=!rfm_marksman_assigned] run function rfm:collective/game/marksman/assign_next

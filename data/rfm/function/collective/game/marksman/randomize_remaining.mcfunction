tag @a[tag=rfm_participant,scores={group_finished=0}] remove rfm_marksman_randomizing
tag @a[tag=rfm_participant,scores={group_finished=0},sort=random,limit=1] add rfm_marksman_randomizing
scoreboard players add #elimination group_score 1
scoreboard players operation @a[tag=rfm_participant,tag=rfm_marksman_randomizing,limit=1] group_score = #elimination group_score
scoreboard players set @a[tag=rfm_participant,tag=rfm_marksman_randomizing,limit=1] group_finished 1
clear @a[tag=rfm_participant,tag=rfm_marksman_randomizing,limit=1] minecraft:bow[minecraft:custom_data~{rfm_marksman_bow:1}]
clear @a[tag=rfm_participant,tag=rfm_marksman_randomizing,limit=1] minecraft:arrow[minecraft:custom_data~{rfm_marksman_arrow:1}]
effect give @a[tag=rfm_participant,tag=rfm_marksman_randomizing,limit=1] minecraft:instant_health 1 255 true
gamemode adventure @a[tag=rfm_participant,tag=rfm_marksman_randomizing,limit=1]
tp @a[tag=rfm_participant,tag=rfm_marksman_randomizing,limit=1] 56 -59 -55 0 0
tag @a[tag=rfm_participant,tag=rfm_marksman_randomizing] remove rfm_marksman_randomizing
execute if entity @a[tag=rfm_participant,scores={group_finished=0}] run function rfm:collective/game/marksman/randomize_remaining

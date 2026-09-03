tag @a[tag=rfm_participant,tag=rfm_marksman_pending,scores={group_finished=0}] remove rfm_marksman_processing
tag @a[tag=rfm_participant,tag=rfm_marksman_pending,scores={group_finished=0},sort=random,limit=1] add rfm_marksman_processing
execute as @a[tag=rfm_participant,tag=rfm_marksman_processing,limit=1] run function rfm:collective/game/marksman/eliminate
tag @a[tag=rfm_participant,tag=rfm_marksman_processing] remove rfm_marksman_pending
tag @a[tag=rfm_participant,tag=rfm_marksman_processing] remove rfm_marksman_processing
execute if entity @a[tag=rfm_participant,tag=rfm_marksman_pending,scores={group_finished=0}] run function rfm:collective/game/marksman/process_pending

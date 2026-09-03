schedule clear rfm:collective/game/marksman/countdown_3
schedule clear rfm:collective/game/marksman/countdown_2
schedule clear rfm:collective/game/marksman/countdown_1
schedule clear rfm:collective/game/marksman/begin
bossbar set rfm:marksman_time visible false
bossbar set rfm:marksman_time players
clear @a[tag=rfm_participant] minecraft:paper[minecraft:custom_data={collective_start_ready:1}]
clear @a[tag=rfm_participant] minecraft:bow[minecraft:custom_data~{rfm_marksman_bow:1}]
clear @a[tag=rfm_participant] minecraft:arrow[minecraft:custom_data~{rfm_marksman_arrow:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_marksman_bow:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_marksman_arrow:1}}}}]
kill @e[type=minecraft:arrow,tag=rfm_marksman_arrow]
tag @a[tag=rfm_participant] remove rfm_marksman_assigned
tag @a[tag=rfm_participant] remove rfm_marksman_assigning
tag @a[tag=rfm_participant] remove rfm_marksman_pending
tag @a[tag=rfm_participant] remove rfm_marksman_processing
tag @a[tag=rfm_participant] remove rfm_marksman_randomizing
advancement revoke @a only rfm:marksman_hit

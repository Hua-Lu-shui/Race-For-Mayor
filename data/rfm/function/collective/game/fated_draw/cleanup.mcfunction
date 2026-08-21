bossbar set rfm:lottery_time visible false
bossbar set rfm:lottery_time players
kill @e[type=minecraft:item_display,tag=rfm_lottery_paper]
kill @e[type=minecraft:interaction,tag=rfm_lottery_interaction]
clear @a[tag=rfm_participant] minecraft:map[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
advancement revoke @a[tag=rfm_participant] only rfm:lottery_pick_1
advancement revoke @a[tag=rfm_participant] only rfm:lottery_pick_2
advancement revoke @a[tag=rfm_participant] only rfm:lottery_pick_3
advancement revoke @a[tag=rfm_participant] only rfm:lottery_pick_4
advancement revoke @a[tag=rfm_participant] only rfm:lottery_pick_5
advancement revoke @a[tag=rfm_participant] only rfm:lottery_pick_6
advancement revoke @a[tag=rfm_participant] only rfm:lottery_pick_7
advancement revoke @a[tag=rfm_participant] only rfm:lottery_pick_8

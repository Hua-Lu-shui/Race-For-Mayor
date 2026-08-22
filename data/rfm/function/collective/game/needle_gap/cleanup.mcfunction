bossbar set rfm:needle_time visible false
bossbar set rfm:needle_time players
effect clear @a[tag=rfm_participant] minecraft:levitation
clear @a[tag=rfm_participant] minecraft:paper[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]

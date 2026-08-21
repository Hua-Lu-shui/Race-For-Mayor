bossbar set rfm:swim_time visible false
bossbar set rfm:swim_time players
effect clear @a[tag=rfm_participant] minecraft:water_breathing
clear @a[tag=rfm_participant] minecraft:map[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]

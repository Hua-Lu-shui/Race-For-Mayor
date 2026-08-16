bossbar set rfm:needle_time visible false
bossbar set rfm:needle_time players
effect clear @a minecraft:levitation
clear @a minecraft:map[minecraft:custom_data={collective_start_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]

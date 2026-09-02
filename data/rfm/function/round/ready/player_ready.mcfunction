scoreboard players set @s next_round_ready 1
scoreboard players set @s next_round_clock 0
execute as @a[tag=rfm_participant] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 1.2
clear @s minecraft:clock[minecraft:custom_data={next_round_ready:1}]
clear @s minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
execute at @s run kill @e[type=minecraft:item,distance=..3,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}]
clear @s minecraft:amethyst_shard[minecraft:custom_data~{rfm_collection:1}]

schedule clear rfm:collective/game/hot_potato/countdown_3
schedule clear rfm:collective/game/hot_potato/countdown_2
schedule clear rfm:collective/game/hot_potato/countdown_1
schedule clear rfm:collective/game/hot_potato/begin
schedule clear rfm:collective/game/hot_potato/next_round
stopsound @a[tag=rfm_participant] music rfm:hot_potato
clear @a[tag=rfm_participant] minecraft:paper[minecraft:custom_data={collective_start_ready:1}]
clear @a[tag=rfm_participant] minecraft:oxeye_daisy[minecraft:custom_data~{rfm_hot_potato:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{collective_start_ready:1}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_hot_potato:1}}}}]
kill @e[type=minecraft:interaction,tag=rfm_hot_potato_target]
effect clear @a[tag=rfm_participant] minecraft:glowing
tag @a[tag=rfm_participant] remove rfm_potato_holder
tag @a[tag=rfm_participant] remove rfm_hot_potato_target_player
tag @a[tag=rfm_participant] remove rfm_hot_potato_assigned
tag @a[tag=rfm_participant] remove rfm_hot_potato_assigning
advancement revoke @a only rfm:hot_potato_pass_1
advancement revoke @a only rfm:hot_potato_pass_2
advancement revoke @a only rfm:hot_potato_pass_3
advancement revoke @a only rfm:hot_potato_pass_4
advancement revoke @a only rfm:hot_potato_pass_5
advancement revoke @a only rfm:hot_potato_pass_6
advancement revoke @a only rfm:hot_potato_pass_7
advancement revoke @a only rfm:hot_potato_pass_8

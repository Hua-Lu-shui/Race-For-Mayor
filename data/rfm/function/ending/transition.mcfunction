scoreboard players set #settle_state settle_state 2
clear @a[tag=rfm_participant] minecraft:clock[minecraft:custom_data={settlement_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}]
clear @a[tag=rfm_participant] minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_item:1}}}}]
scoreboard players set @a[tag=rfm_participant] item_held 0
clear @a[tag=rfm_participant] minecraft:amethyst_shard[minecraft:custom_data~{rfm_collection:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{rfm_collection:1}}}}]
scoreboard objectives setdisplay sidebar
title @a[tag=rfm_participant] actionbar {"text":""}
title @a[tag=rfm_participant] clear

item replace entity @a[tag=rfm_participant] armor.head with minecraft:carved_pumpkin[minecraft:custom_name='{"translate":"rfm.text.ea82ecabfdaf","color":"black","italic":false}',minecraft:custom_data={rfm_ending_blackout:1}] 1
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.54ac59358a85","color":"dark_gray","italic":true}
schedule function rfm:ending/city_hall 40t replace

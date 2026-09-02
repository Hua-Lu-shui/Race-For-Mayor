scoreboard players set @s settle_ready 1
scoreboard players set @s settle_clock 0
clear @s minecraft:clock[minecraft:custom_data={settlement_ready:1}]
function rfm:title/check/no_title
clear @s minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
scoreboard players set @s item_held 0
clear @s minecraft:amethyst_shard[minecraft:custom_data~{rfm_collection:1}]
tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"white"},{"translate":"rfm.text.09f68918bc95","color":"gray"}]

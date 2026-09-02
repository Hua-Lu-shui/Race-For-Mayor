execute unless score #abilities settle_state matches 1 run function rfm:ability/final/apply
function rfm:title/leader/final_round
function rfm:title/check/attributes
function rfm:title/check/final
execute as @a[tag=rfm_participant,scores={title_item_used=0}] unless entity @s[advancements={rfm:title/no_item=true}] run function rfm:title/award/no_item
scoreboard players set #waiting next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_ready 0
scoreboard players set @a[tag=rfm_participant] next_round_clock 0
clear @a[tag=rfm_participant] minecraft:clock[minecraft:custom_data={next_round_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{next_round_ready:1}}}}]
clear @a[tag=rfm_participant] minecraft:heart_of_the_sea[minecraft:custom_data~{rfm_item:1}]
execute as @a[tag=rfm_participant,scores={item_held=1..24}] run function rfm:item/give_selected
execute as @a[tag=rfm_participant,scores={collection_slot1=1..}] run function rfm:collection/deliver
execute as @a[tag=rfm_participant,scores={collection_slot1=..0,collection_slot2=1..}] run function rfm:collection/deliver
execute as @a[tag=rfm_participant,scores={collection_slot1=..0,collection_slot2=..0,collection_slot3=1..}] run function rfm:collection/deliver
execute as @a[tag=rfm_participant,scores={collection_slot1=..0,collection_slot2=..0,collection_slot3=..0,collection_slot4=1..}] run function rfm:collection/deliver
execute as @a[tag=rfm_participant,scores={collection_slot1=..0,collection_slot2=..0,collection_slot3=..0,collection_slot4=..0,collection_slot5=1..}] run function rfm:collection/deliver
function rfm:phase/phase2
scoreboard players set #settle_state settle_state 1
scoreboard players set @a[tag=rfm_participant] settle_ready 0
scoreboard players set @a[tag=rfm_participant] settle_clock 0
clear @a[tag=rfm_participant] minecraft:clock[minecraft:custom_data={settlement_ready:1}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{settlement_ready:1}}}}]
item replace entity @a[tag=rfm_participant] hotbar.4 with minecraft:clock[minecraft:custom_name='{"translate":"rfm.text.1d927374a66a","color":"gold","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.b9f72406d3e7","color":"gray","italic":false}'],minecraft:custom_data={settlement_ready:1}] 1
title @a[tag=rfm_participant] subtitle {"text":""}
title @a[tag=rfm_participant] title [{"translate":"rfm.text.cc3ce6dfcb66","color":"white"},{"translate":"rfm.text.4ba94afc00bf","color":"#FFD166","bold":true}]

tag @s add rfm_item_current
execute on origin if entity @s[tag=rfm_participant,scores={item_held=1..24}] run function rfm:item/use/dispatch
tag @s remove rfm_item_current

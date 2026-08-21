#执行者为丢出的令牌实体；只把效果交给该物品实体的原主人
tag @s add rfm_item_current
execute on origin if entity @s[tag=rfm_participant,scores={item_held=1..24}] run function rfm:item/use/dispatch
tag @s remove rfm_item_current

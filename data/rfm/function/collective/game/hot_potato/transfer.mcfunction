clear @s minecraft:oxeye_daisy[minecraft:custom_data~{rfm_hot_potato:1}]
effect clear @s minecraft:glowing
tag @s remove rfm_potato_holder
scoreboard players set @s potato_hold 0
item replace entity @a[tag=rfm_hot_potato_target_player,limit=1] hotbar.4 with minecraft:oxeye_daisy[minecraft:custom_name='{"text":"滨菊","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"text":"右键其他玩家，将滨菊传出","color":"white","italic":false}'],minecraft:enchantment_glint_override=true,minecraft:custom_data={rfm_hot_potato:1}] 1
tag @a[tag=rfm_hot_potato_target_player,limit=1] add rfm_potato_holder
scoreboard players set @a[tag=rfm_hot_potato_target_player,limit=1] potato_hold 0
function rfm:collective/game/hot_potato/create_targets
effect give @a[tag=rfm_hot_potato_target_player,limit=1] minecraft:glowing infinite 0 true
playsound minecraft:entity.item.pickup master @a[tag=rfm_participant] ~ ~ ~ 0.8 1.3 1
tag @a[tag=rfm_participant] remove rfm_hot_potato_target_player

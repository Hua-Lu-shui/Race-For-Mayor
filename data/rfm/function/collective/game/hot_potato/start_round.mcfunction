#只剩一名玩家时直接决出冠军；否则随机发花并生成5～15秒的停乐时刻
execute store result score #active player_count run execute if entity @a[tag=rfm_participant,scores={group_finished=0}]
execute if score #active player_count matches 1 run return run function rfm:collective/game/hot_potato/finish_winner

tag @a[tag=rfm_participant] remove rfm_potato_holder
effect clear @a[tag=rfm_participant] minecraft:glowing
clear @a[tag=rfm_participant] minecraft:oxeye_daisy[minecraft:custom_data~{rfm_hot_potato:1}]
tag @a[tag=rfm_participant,scores={group_finished=0},sort=random,limit=1] add rfm_potato_holder
scoreboard players set @a[tag=rfm_potato_holder] potato_hold 0
function rfm:collective/game/hot_potato/create_targets
item replace entity @a[tag=rfm_potato_holder,limit=1] hotbar.4 with minecraft:oxeye_daisy[minecraft:custom_name='{"translate":"rfm.text.68c551926544","color":"yellow","bold":true,"italic":false}',minecraft:lore=['{"translate":"rfm.text.c297bd22c6db","color":"white","italic":false}'],minecraft:enchantment_glint_override=true,minecraft:custom_data={rfm_hot_potato:1}] 1
effect give @a[tag=rfm_potato_holder] minecraft:glowing infinite 0 true
execute store result score #group_time group_time run random value 100..300
playsound rfm:hot_potato music @a[tag=rfm_participant] ~ ~ ~ 1 1 1
tellraw @a[tag=rfm_potato_holder] {"translate":"rfm.text.7d01d97e88e0","color":"yellow","bold":true}

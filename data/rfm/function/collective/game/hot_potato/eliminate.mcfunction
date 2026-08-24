scoreboard players set #group_state group_state 2
stopsound @a[tag=rfm_participant] music rfm:hot_potato
clear @a[tag=rfm_participant] minecraft:oxeye_daisy[minecraft:custom_data~{rfm_hot_potato:1}]
effect clear @a[tag=rfm_participant] minecraft:glowing
tag @a[tag=rfm_participant] remove rfm_potato_holder
scoreboard players add #elimination group_score 1
scoreboard players operation @s group_score = #elimination group_score
scoreboard players set @s group_finished 1
gamemode adventure @s
tp @s 56 -59 -55 0 0
playsound minecraft:entity.lightning_bolt.thunder master @a[tag=rfm_participant] ~ ~ ~ 0.6 1.4 1

execute store result score #active player_count run execute if entity @a[tag=rfm_participant,scores={group_finished=0}]
execute if score #active player_count matches 1 run return run function rfm:collective/game/hot_potato/finish_winner
schedule function rfm:collective/game/hot_potato/next_round 60t replace

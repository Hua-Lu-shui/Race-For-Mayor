scoreboard players add #elimination group_score 1
scoreboard players operation @s group_score = #elimination group_score
scoreboard players set @s group_finished 1
clear @s minecraft:bow[minecraft:custom_data~{rfm_marksman_bow:1}]
clear @s minecraft:arrow[minecraft:custom_data~{rfm_marksman_arrow:1}]
effect give @s minecraft:instant_health 1 255 true
gamemode adventure @s
tp @s 56 -59 -55 0 0
tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"yellow","bold":true},{"translate":"rfm.collective.marksman.eliminated","color":"white"}]
playsound minecraft:entity.arrow.hit_player master @a[tag=rfm_participant] ~ ~ ~ 1 1 1

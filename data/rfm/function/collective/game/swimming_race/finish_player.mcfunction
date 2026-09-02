scoreboard players set @s group_finished 1
scoreboard players add #group_arrival group_arrival 1
scoreboard players set @s group_score 9
scoreboard players operation @s group_score -= #group_arrival group_arrival
tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"aqua","bold":true},{"translate":"rfm.text.f24d00e265db","color":"white"},{"score":{"name":"#group_arrival","objective":"group_arrival"},"color":"gold","bold":true},{"translate":"rfm.text.81d4aecdad11","color":"gold","bold":true}]
playsound minecraft:entity.player.levelup master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1
gamemode adventure @s
tp @s 56 -59 -55 0 0

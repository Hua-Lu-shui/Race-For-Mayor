scoreboard players operation @s group_score = @e[type=minecraft:interaction,tag=rfm_lottery_selected,limit=1] group_score
scoreboard players set @s group_rank 9
scoreboard players operation @s group_rank -= @s group_score
scoreboard players set @s group_finished 1
tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"gold","bold":true},{"translate":"rfm.text.47cbe37eec89","color":"white"},{"score":{"name":"@s","objective":"group_rank"},"color":"gold","bold":true},{"translate":"rfm.text.1717670d1f9f","color":"gold","bold":true}]
playsound minecraft:entity.item.pickup master @a[tag=rfm_participant] ~ ~ ~ 1 1 1
execute at @e[type=minecraft:interaction,tag=rfm_lottery_selected,limit=1] run kill @e[type=minecraft:item_display,tag=rfm_lottery_paper,distance=..0.6,sort=nearest,limit=1]
kill @e[type=minecraft:interaction,tag=rfm_lottery_selected]
gamemode adventure @s
tp @s 56 -59 -55 0 0
execute if score #group_state group_state matches 1 unless entity @a[tag=rfm_participant,scores={group_finished=0}] run function rfm:collective/finish

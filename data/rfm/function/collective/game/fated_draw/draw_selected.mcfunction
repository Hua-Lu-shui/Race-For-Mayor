#把所选纸条的隐藏排序分数复制给抽签玩家，并换算成可见名次
scoreboard players operation @s group_score = @e[type=minecraft:interaction,tag=rfm_lottery_selected,limit=1] group_score
scoreboard players set @s group_rank 9
scoreboard players operation @s group_rank -= @s group_score
scoreboard players set @s group_finished 1
tellraw @a [{"selector":"@s","color":"gold","bold":true},{"text":" 抽中了第","color":"white"},{"score":{"name":"@s","objective":"group_rank"},"color":"gold","bold":true},{"text":"名！","color":"gold","bold":true}]
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1 1
execute at @e[type=minecraft:interaction,tag=rfm_lottery_selected,limit=1] run kill @e[type=minecraft:item_display,tag=rfm_lottery_paper,distance=..0.6,sort=nearest,limit=1]
kill @e[type=minecraft:interaction,tag=rfm_lottery_selected]
gamemode spectator @s
execute if score #group_state group_state matches 1 unless entity @a[scores={group_finished=0}] run function rfm:collective/finish

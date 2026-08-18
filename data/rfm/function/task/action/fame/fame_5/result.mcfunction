#根据45秒内获得的应援分数结算名誉
scoreboard players set @s cheer_state 4
bossbar set rfm:cheer_time visible false
kill @e[type=minecraft:item,tag=rfm_cheer_flower]
kill @e[type=minecraft:item,tag=rfm_cheer_egg]
tellraw @a [{"text":"市民应援结束，最终得分：","color":"white"},{"score":{"name":"@s","objective":"cheer_score"},"color":"aqua"},{"text":" 分。","color":"white"}]

execute if score @s cheer_score matches 18.. run scoreboard players add @s fame 16
execute if score @s cheer_score matches 18.. run function rfm:ability/military/perfect
execute if score @s cheer_score matches 18.. run tellraw @a [{"text":"【市民应援】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 名誉 +16","color":"aqua"}]

execute if score @s cheer_score matches 12..17 run scoreboard players add @s fame 10
execute if score @s cheer_score matches 12..17 run tellraw @a [{"text":"【市民应援】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 名誉 +10","color":"aqua"}]

execute if score @s cheer_score matches ..11 run scoreboard players add @s fame 4
execute if score @s cheer_score matches ..11 run tellraw @a [{"text":"【市民应援】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 名誉 +4","color":"aqua"}]
function rfm:attribute/minimum
function rfm:task/action/fame/fame_5/cleanup

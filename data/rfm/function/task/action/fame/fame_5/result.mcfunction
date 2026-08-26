#根据45秒内获得的应援分数结算名誉
scoreboard players set @s cheer_state 4
bossbar set rfm:cheer_time visible false
kill @e[type=minecraft:item,tag=rfm_cheer_flower]
kill @e[type=minecraft:item,tag=rfm_cheer_egg]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b858b5d26362","color":"white"},{"score":{"name":"@s","objective":"cheer_score"},"color":"aqua"},{"translate":"rfm.text.822edea518fb","color":"white"}]

execute if score @s cheer_score matches 18.. run scoreboard players add @s fame 16
execute if score @s cheer_score matches 18.. run function rfm:ability/military/perfect
execute if score @s cheer_score matches 18.. run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a4dd91990cb0","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.dbfcde57838a","color":"aqua"}]

execute if score @s cheer_score matches 12..17 run scoreboard players add @s fame 10
execute if score @s cheer_score matches 12..17 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a4dd91990cb0","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.80d140b13719","color":"aqua"}]

execute if score @s cheer_score matches ..11 run scoreboard players add @s fame 4
execute if score @s cheer_score matches ..11 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a4dd91990cb0","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.a58f69c14b04","color":"aqua"}]
function rfm:attribute/minimum
function rfm:task/action/fame/fame_5/cleanup

scoreboard players set @s visit_state 4
bossbar set rfm:visit_time visible false

execute if score @s visit_step matches 5.. if score @s visit_wrong matches 0 run scoreboard players add @s fame 16
execute if score @s visit_step matches 5.. if score @s visit_wrong matches 0 run function rfm:ability/military/perfect
execute if score @s visit_step matches 5.. if score @s visit_wrong matches 0 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b01a80ad74b9","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.dbfcde57838a","color":"aqua"}]

execute if score @s visit_step matches 5.. if score @s visit_wrong matches 1..2 run scoreboard players add @s fame 10
execute if score @s visit_step matches 5.. if score @s visit_wrong matches 1..2 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b01a80ad74b9","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.80d140b13719","color":"aqua"}]

execute if score @s visit_step matches ..4 run scoreboard players add @s fame 4
execute if score @s visit_step matches ..4 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b01a80ad74b9","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.a58f69c14b04","color":"aqua"}]
function rfm:attribute/minimum
function rfm:task/action/fame/fame_2/cleanup

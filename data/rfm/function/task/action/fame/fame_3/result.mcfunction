#首次完全正确为完美，调整后完全正确为完成；否则失败
scoreboard players set @s photo_state 4
bossbar set rfm:photo_time visible false

execute if score @s photo_success matches 1 if score @s photo_attempt matches 0 run scoreboard players add @s fame 16
execute if score @s photo_success matches 1 if score @s photo_attempt matches 0 run function rfm:ability/military/perfect
execute if score @s photo_success matches 1 if score @s photo_attempt matches 0 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.fb8ec020eb21","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.dbfcde57838a","color":"aqua"}]

execute if score @s photo_success matches 1 if score @s photo_attempt matches 1 run scoreboard players add @s fame 10
execute if score @s photo_success matches 1 if score @s photo_attempt matches 1 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.fb8ec020eb21","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.80d140b13719","color":"aqua"}]

execute if score @s photo_success matches 0 run scoreboard players add @s fame 4
execute if score @s photo_success matches 0 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.fb8ec020eb21","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.a58f69c14b04","color":"aqua"}]
function rfm:attribute/minimum
function rfm:task/action/fame/fame_3/cleanup

#首次完全正确为完美，调整后完全正确为完成；否则失败
scoreboard players set @s photo_state 4
bossbar set rfm:photo_time visible false

execute if score @s photo_success matches 1 if score @s photo_attempt matches 0 run scoreboard players add @s fame 16
execute if score @s photo_success matches 1 if score @s photo_attempt matches 0 run function rfm:ability/military/perfect
execute if score @s photo_success matches 1 if score @s photo_attempt matches 0 run tellraw @a [{"text":"【市民合影】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 名誉 +16","color":"aqua"}]

execute if score @s photo_success matches 1 if score @s photo_attempt matches 1 run scoreboard players add @s fame 10
execute if score @s photo_success matches 1 if score @s photo_attempt matches 1 run tellraw @a [{"text":"【市民合影】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 名誉 +10","color":"aqua"}]

execute if score @s photo_success matches 0 run scoreboard players add @s fame 4
execute if score @s photo_success matches 0 run tellraw @a [{"text":"【市民合影】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 名誉 +4","color":"aqua"}]
function rfm:attribute/minimum
function rfm:task/action/fame/fame_3/cleanup

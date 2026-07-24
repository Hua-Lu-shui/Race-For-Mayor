#首次完全正确奖励6点，调整后完全正确奖励4点；否则失败
scoreboard players set @s photo_state 4
bossbar set rfm:photo_time visible false

execute if score @s photo_success matches 1 if score @s photo_attempt matches 0 run scoreboard players add @s fame 6
execute if score @s photo_success matches 1 if score @s photo_attempt matches 0 run function rfm:ability/military/perfect
execute if score @s photo_success matches 1 if score @s photo_attempt matches 0 run tellraw @a [{"text":"【市民合影】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 首次排位完全正确，顺利完成拍摄！","color":"gold","bold":true},{"text":" 名誉 +6","color":"aqua"}]

execute if score @s photo_success matches 1 if score @s photo_attempt matches 1 run scoreboard players add @s fame 4
execute if score @s photo_success matches 1 if score @s photo_attempt matches 1 run tellraw @a [{"text":"【市民合影】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 调整后排位正确，完成拍摄！","color":"green","bold":true},{"text":" 名誉 +4","color":"aqua"}]

execute if score @s photo_success matches 0 run tellraw @a [{"text":"【市民合影】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 未能在规定机会内完成正确排位，任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]
function rfm:attribute/minimum
function rfm:task/action/fame/fame_3/cleanup

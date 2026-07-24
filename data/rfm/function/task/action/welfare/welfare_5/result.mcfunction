#根据修复数量和剩余时间结算民生奖励，不影响其他属性
scoreboard players set @s manhole_state 4
bossbar set rfm:manhole_time visible false

#修复全部井盖且剩余至少20秒
execute if score @s manhole_repaired matches 6.. if score @s manhole_time matches 400.. run scoreboard players add @s welfare 7
execute if score @s manhole_repaired matches 6.. if score @s manhole_time matches 400.. run function rfm:ability/military/perfect
execute if score @s manhole_repaired matches 6.. if score @s manhole_time matches 400.. run tellraw @a [{"text":"【井盖安全巡检】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 快速完成全部井盖维修！","color":"gold","bold":true},{"text":" 民生 +7","color":"red"}]

#修复全部井盖但剩余不足20秒
execute if score @s manhole_repaired matches 6.. if score @s manhole_time matches ..399 run scoreboard players add @s welfare 5
execute if score @s manhole_repaired matches 6.. if score @s manhole_time matches ..399 run tellraw @a [{"text":"【井盖安全巡检】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 完成全部井盖维修。","color":"green","bold":true},{"text":" 民生 +5","color":"red"}]

execute if score @s manhole_repaired matches 3..5 run scoreboard players add @s welfare 3
execute if score @s manhole_repaired matches 3..5 run tellraw @a [{"text":"【井盖安全巡检】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 在时间结束前排除了部分隐患。","color":"yellow","bold":true},{"text":" 民生 +3","color":"red"}]
execute if score @s manhole_repaired matches ..2 run tellraw @a [{"text":"【井盖安全巡检】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 未能及时排除足够的道路隐患。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]

function rfm:attribute/minimum
function rfm:task/action/welfare/welfare_5/cleanup

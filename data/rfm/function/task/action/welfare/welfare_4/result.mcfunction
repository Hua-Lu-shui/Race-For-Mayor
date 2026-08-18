#根据正确发车次数和失误次数结算民生奖励，不影响其他属性
scoreboard players set @s bus_state 4
bossbar set rfm:bus_time visible false

#完成6次正确发车时，根据失误次数分档
execute if score @s bus_success matches 6.. if score @s bus_wrong matches 0 run scoreboard players add @s welfare 16
execute if score @s bus_success matches 6.. if score @s bus_wrong matches 0 run function rfm:ability/military/perfect
execute if score @s bus_success matches 6.. if score @s bus_wrong matches 0 run tellraw @a [{"text":"【公交站调度】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 民生 +16","color":"red"}]
execute if score @s bus_success matches 6.. if score @s bus_wrong matches 1.. run scoreboard players add @s welfare 10
execute if score @s bus_success matches 6.. if score @s bus_wrong matches 1.. run tellraw @a [{"text":"【公交站调度】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 民生 +10","color":"red"}]

#未完成6次正确发车：失败
execute if score @s bus_success matches ..5 run scoreboard players add @s welfare 4
execute if score @s bus_success matches ..5 run tellraw @a [{"text":"【公交站调度】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 民生 +4","color":"red"}]

function rfm:attribute/minimum
function rfm:task/action/welfare/welfare_4/cleanup

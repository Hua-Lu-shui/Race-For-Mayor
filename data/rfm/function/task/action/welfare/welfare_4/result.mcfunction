#根据正确发车次数和失误次数结算民生奖励，不影响其他属性
scoreboard players set @s bus_state 4
bossbar set rfm:bus_time visible false

#完成6次正确发车时，根据失误次数分档
execute if score @s bus_success matches 6.. if score @s bus_wrong matches 0 run scoreboard players add @s welfare 7
execute if score @s bus_success matches 6.. if score @s bus_wrong matches 0 run tellraw @a [{"text":"【公交站调度】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 完成6次精准调度且没有失误！","color":"gold","bold":true},{"text":" 民生 +7","color":"red"}]
execute if score @s bus_success matches 6.. if score @s bus_wrong matches 1..2 run scoreboard players add @s welfare 5
execute if score @s bus_success matches 6.. if score @s bus_wrong matches 1..2 run tellraw @a [{"text":"【公交站调度】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 完成6次正确调度。","color":"green","bold":true},{"text":" 民生 +5","color":"red"}]
execute if score @s bus_success matches 6.. if score @s bus_wrong matches 3.. run scoreboard players add @s welfare 3
execute if score @s bus_success matches 6.. if score @s bus_wrong matches 3.. run tellraw @a [{"text":"【公交站调度】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 完成任务，但调度中出现多次失误。","color":"yellow","bold":true},{"text":" 民生 +3","color":"red"}]

#时间结束时，根据已经完成的正确发车次数分档
execute if score @s bus_success matches 3..5 run scoreboard players add @s welfare 3
execute if score @s bus_success matches 3..5 run tellraw @a [{"text":"【公交站调度】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 在时间结束前完成了部分调度。","color":"yellow","bold":true},{"text":" 民生 +3","color":"red"}]
execute if score @s bus_success matches ..2 run tellraw @a [{"text":"【公交站调度】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 未能及时缓解站台拥堵。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]

function rfm:attribute/minimum
function rfm:task/action/welfare/welfare_4/cleanup

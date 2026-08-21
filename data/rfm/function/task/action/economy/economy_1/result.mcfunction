scoreboard players set @s market_state 4
bossbar set rfm:market_time visible false

#选对且剩余至少20秒，即在20秒内完成：完美完成
execute if score @s market_correct matches 1 if score @s market_time matches 400.. run scoreboard players add @s economy 16
execute if score @s market_correct matches 1 if score @s market_time matches 400.. run function rfm:ability/military/perfect
execute if score @s market_correct matches 1 if score @s market_time matches 400.. run tellraw @a[tag=rfm_participant] [{"text":"【市场调研】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 经济 +16","color":"yellow"}]

#选对且剩余时间少于20秒，即在20至40秒内完成：普通完成
execute if score @s market_correct matches 1 if score @s market_time matches 0..399 run scoreboard players add @s economy 10
execute if score @s market_correct matches 1 if score @s market_time matches 0..399 run tellraw @a[tag=rfm_participant] [{"text":"【市场调研】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 经济 +10","color":"yellow"}]

#选错或40秒内没有完成交易：失败
execute if score @s market_correct matches 0 run scoreboard players add @s economy 4
execute if score @s market_correct matches 0 run tellraw @a[tag=rfm_participant] [{"text":"【市场调研】","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 经济 +4","color":"yellow"}]
function rfm:attribute/minimum
function rfm:task/action/economy/economy_1/cleanup

scoreboard players set @s market_state 4
bossbar set rfm:market_time visible false

#选对且剩余至少20秒，即在20秒内完成：完美完成
execute if score @s market_correct matches 1 if score @s market_time matches 400.. run scoreboard players add @s economy 16
execute if score @s market_correct matches 1 if score @s market_time matches 400.. run function rfm:ability/military/perfect
execute if score @s market_correct matches 1 if score @s market_time matches 400.. run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7a439125ded7","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.ced1081dcff3","color":"yellow"}]

#选对且剩余时间少于20秒，即在20至40秒内完成：普通完成
execute if score @s market_correct matches 1 if score @s market_time matches 0..399 run scoreboard players add @s economy 10
execute if score @s market_correct matches 1 if score @s market_time matches 0..399 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7a439125ded7","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.317269b7c340","color":"yellow"}]

#选错或40秒内没有完成交易：失败
execute if score @s market_correct matches 0 run scoreboard players add @s economy 4
execute if score @s market_correct matches 0 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7a439125ded7","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.a567bc2753db","color":"yellow"}]
function rfm:attribute/minimum
function rfm:task/action/economy/economy_1/cleanup

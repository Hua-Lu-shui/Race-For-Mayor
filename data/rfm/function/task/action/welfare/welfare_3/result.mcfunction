#根据已经完成的轮数结算民生奖励，不影响其他属性
scoreboard players set @s exercise_state 4
bossbar set rfm:exercise_time visible false

#exercise_round为4时表示三轮全部完成
execute if score @s exercise_round matches 4.. run scoreboard players add @s welfare 14
execute if score @s exercise_round matches 4.. run function rfm:ability/military/perfect
execute if score @s exercise_round matches 4.. run tellraw @a [{"text":"【课间操领队】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 民生 +14","color":"red"}]

#停在第3轮表示完成两轮
execute if score @s exercise_round matches 3 run scoreboard players add @s welfare 10
execute if score @s exercise_round matches 3 run tellraw @a [{"text":"【课间操领队】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 民生 +10","color":"red"}]

#未完成两轮：失败
execute if score @s exercise_round matches ..2 run tellraw @a [{"text":"【课间操领队】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]

function rfm:attribute/minimum
function rfm:task/action/welfare/welfare_3/cleanup

#根据已经完成的轮数结算民生奖励，不影响其他属性
scoreboard players set @s exercise_state 4
bossbar set rfm:exercise_time visible false

#exercise_round为4时表示三轮全部完成
execute if score @s exercise_round matches 4.. run scoreboard players add @s welfare 16
execute if score @s exercise_round matches 4.. run function rfm:ability/military/perfect
execute if score @s exercise_round matches 4.. run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.d13210629bfc","color":"red","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.379faccd6692","color":"red"}]

#停在第3轮表示完成两轮
execute if score @s exercise_round matches 3 run scoreboard players add @s welfare 10
execute if score @s exercise_round matches 3 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.d13210629bfc","color":"red","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.eb74d16a4797","color":"red"}]

#未完成两轮：失败
execute if score @s exercise_round matches ..2 run scoreboard players add @s welfare 4
execute if score @s exercise_round matches ..2 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.d13210629bfc","color":"red","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.be1f9be13b3a","color":"red"}]

function rfm:attribute/minimum
function rfm:task/action/welfare/welfare_3/cleanup

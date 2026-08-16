#根据10次临场反应的成功次数结算奖励
scoreboard players set @s speech_state 4
bossbar set rfm:speech_time visible false
tellraw @a [{"text":"街头演讲结束，成功应对 ","color":"white"},{"score":{"name":"@s","objective":"speech_correct"},"color":"aqua"},{"text":" / 10 次现场反应。","color":"white"}]

execute if score @s speech_correct matches 8..10 run scoreboard players add @s fame 12
execute if score @s speech_correct matches 8..10 run function rfm:ability/military/perfect
execute if score @s speech_correct matches 8..10 run tellraw @a [{"text":"【街头演讲】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 名誉 +12","color":"aqua"}]

execute if score @s speech_correct matches 6..7 run scoreboard players add @s fame 8
execute if score @s speech_correct matches 6..7 run tellraw @a [{"text":"【街头演讲】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 名誉 +8","color":"aqua"}]

execute if score @s speech_correct matches ..5 run tellraw @a [{"text":"【街头演讲】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]
function rfm:attribute/minimum
function rfm:task/action/fame/fame_1/cleanup

#根据10次公开答疑的成功次数结算奖励
scoreboard players set @s qa_state 4
bossbar set rfm:qa_time visible false
effect clear @e[type=minecraft:villager,tag=rfm_qa_reporter] minecraft:glowing
tellraw @a [{"text":"公开答疑结束，成功回应 ","color":"white"},{"score":{"name":"@s","objective":"qa_correct"},"color":"aqua"},{"text":" / 10 次记者提问。","color":"white"}]

execute if score @s qa_correct matches 9..10 run scoreboard players add @s fame 6
execute if score @s qa_correct matches 9..10 run function rfm:ability/military/perfect
execute if score @s qa_correct matches 9..10 run tellraw @a [{"text":"【公开答疑】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 从容完成直播答疑！","color":"gold","bold":true},{"text":" 名誉 +6","color":"aqua"}]

execute if score @s qa_correct matches 6..8 run scoreboard players add @s fame 4
execute if score @s qa_correct matches 6..8 run tellraw @a [{"text":"【公开答疑】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 完成公开答疑！","color":"green","bold":true},{"text":" 名誉 +4","color":"aqua"}]

execute if score @s qa_correct matches ..5 run tellraw @a [{"text":"【公开答疑】","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"text":" 多次未能及时回应，任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]
function rfm:attribute/minimum
function rfm:task/action/fame/fame_4/cleanup

#根据10次公开答疑的成功次数结算奖励
scoreboard players set @s qa_state 4
bossbar set rfm:qa_time visible false
effect clear @e[type=minecraft:villager,tag=rfm_qa_reporter] minecraft:glowing
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.c6e17bfde532","color":"white"},{"score":{"name":"@s","objective":"qa_correct"},"color":"aqua"},{"translate":"rfm.text.56946a6f44d2","color":"white"}]

execute if score @s qa_correct matches 9..10 run scoreboard players add @s fame 16
execute if score @s qa_correct matches 9..10 run function rfm:ability/military/perfect
execute if score @s qa_correct matches 9..10 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b638909e26c3","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.dbfcde57838a","color":"aqua"}]

execute if score @s qa_correct matches 6..8 run scoreboard players add @s fame 10
execute if score @s qa_correct matches 6..8 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b638909e26c3","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.80d140b13719","color":"aqua"}]

execute if score @s qa_correct matches ..5 run scoreboard players add @s fame 4
execute if score @s qa_correct matches ..5 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b638909e26c3","color":"aqua","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.a58f69c14b04","color":"aqua"}]
function rfm:attribute/minimum
function rfm:task/action/fame/fame_4/cleanup

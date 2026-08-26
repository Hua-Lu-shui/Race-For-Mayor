#根据完成情况结算经济行动任务3的奖励
scoreboard players set @s audit_state 4
bossbar set rfm:audit_time visible false

execute if score @s audit_correct matches 1 if score @s audit_time matches 600.. run scoreboard players add @s economy 16
execute if score @s audit_correct matches 1 if score @s audit_time matches 600.. run function rfm:ability/military/perfect
execute if score @s audit_correct matches 1 if score @s audit_time matches 600.. run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b580e7380dd9","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.ced1081dcff3","color":"yellow"}]

execute if score @s audit_correct matches 1 if score @s audit_time matches 1..599 run scoreboard players add @s economy 10
execute if score @s audit_correct matches 1 if score @s audit_time matches 1..599 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b580e7380dd9","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.317269b7c340","color":"yellow"}]

execute if score @s audit_correct matches 0 if score @s audit_time matches 1.. run scoreboard players add @s economy 4
execute if score @s audit_correct matches 0 if score @s audit_time matches 1.. run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b580e7380dd9","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.a567bc2753db","color":"yellow"}]
execute if score @s audit_time matches ..0 run scoreboard players add @s economy 4
execute if score @s audit_time matches ..0 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b580e7380dd9","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.a567bc2753db","color":"yellow"}]

function rfm:attribute/minimum
function rfm:task/action/economy/economy_3/cleanup

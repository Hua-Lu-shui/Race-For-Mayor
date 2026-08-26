#根据完成情况结算经济行动任务2的奖励
scoreboard players set @s negotiation_state 4
bossbar set rfm:negotiation_time visible false
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.769bf55351d9","color":"white"},{"score":{"name":"@s","objective":"negotiation_correct"},"color":"yellow"},{"translate":"rfm.text.a66539117e33","color":"white"}]

execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches 9 run scoreboard players add @s economy 16
execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches 9 run function rfm:ability/military/perfect
execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches 9 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.272474ed444b","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.ced1081dcff3","color":"yellow"}]

execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches 6..8 run scoreboard players add @s economy 10
execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches 6..8 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.272474ed444b","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.317269b7c340","color":"yellow"}]

execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches ..5 run scoreboard players add @s economy 4
execute if score @s negotiation_round matches 9.. if score @s negotiation_correct matches ..5 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.272474ed444b","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.a567bc2753db","color":"yellow"}]
execute if score @s negotiation_round matches ..8 run scoreboard players add @s economy 4
execute if score @s negotiation_round matches ..8 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.272474ed444b","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.a567bc2753db","color":"yellow"}]
function rfm:attribute/minimum
function rfm:task/action/economy/economy_2/cleanup

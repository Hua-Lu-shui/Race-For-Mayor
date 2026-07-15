scoreboard players remove @s negotiation_time 1
execute store result bossbar rfm:negotiation_time value run scoreboard players get @s negotiation_time
bossbar set rfm:negotiation_time name [{"text":"招商洽谈 · 已完成 ","color":"yellow"},{"score":{"name":"@s","objective":"negotiation_round"},"color":"gold"},{"text":" / 3 · 正确 ","color":"yellow"},{"score":{"name":"@s","objective":"negotiation_correct"},"color":"green"}]

#读取三个真实按钮：1人才支持，2交通配套，3税收优惠
execute if block 324 -60 108 minecraft:stone_button[powered=true] run scoreboard players set @s negotiation_answer 1
execute if block 328 -60 108 minecraft:stone_button[powered=true] run scoreboard players set @s negotiation_answer 2
execute if block 332 -60 108 minecraft:stone_button[powered=true] run scoreboard players set @s negotiation_answer 3
execute if score @s negotiation_answer matches 1.. run function rfm:task/action/economy/economy_2/check

execute if score @s negotiation_state matches 1 if score @s negotiation_time matches ..0 run function rfm:task/action/economy/economy_2/result

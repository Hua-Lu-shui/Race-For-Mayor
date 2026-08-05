scoreboard players remove @s negotiation_time 1
execute store result bossbar rfm:negotiation_time value run scoreboard players get @s negotiation_time
bossbar set rfm:negotiation_time name [{"text":"\uE21C","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE224","font":"rfm:bossbar"},{"text":"招商洽谈 · 已完成 ","color":"yellow"},{"score":{"name":"@s","objective":"negotiation_round"},"color":"gold"},{"text":" / 9 · 正确 ","color":"yellow"},{"score":{"name":"@s","objective":"negotiation_correct"},"color":"green"}]

#读取三个真实按钮：1人才支持，2交通配套，3税收优惠
execute if block 144 -57 24 minecraft:stone_button[powered=true] run scoreboard players set @s negotiation_answer 1
execute if block 144 -57 22 minecraft:stone_button[powered=true] run scoreboard players set @s negotiation_answer 2
execute if block 144 -57 20 minecraft:stone_button[powered=true] run scoreboard players set @s negotiation_answer 3
execute if score @s negotiation_answer matches 1.. run function rfm:task/action/economy/economy_2/check

execute if score @s negotiation_state matches 1 if score @s negotiation_time matches ..0 run function rfm:task/action/economy/economy_2/result

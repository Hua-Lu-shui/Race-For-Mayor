scoreboard players remove @s market_time 1
execute store result bossbar rfm:market_time value run scoreboard players get @s market_time

scoreboard players set @s market_answer 0
execute if entity @e[type=minecraft:villager,tag=rfm_market_vendor,nbt={Offers:{Recipes:[{uses:1}]}}] run scoreboard players set @s market_answer 2
execute if entity @e[type=minecraft:villager,tag=rfm_market_best,nbt={Offers:{Recipes:[{uses:1}]}}] run scoreboard players set @s market_answer 1

execute if score @s market_answer matches 1.. run function rfm:task/action/economy/economy_1/check
execute if score @s market_state matches 1 if score @s market_time matches ..0 run function rfm:task/action/economy/economy_1/result

execute if score @s market_answer matches 1 run scoreboard players set @s market_correct 1
execute if score @s market_answer matches 2 run scoreboard players set @s market_correct 0
execute if score @s market_answer matches 1 run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.d8adf3886f63","color":"green","bold":true}
execute if score @s market_answer matches 1 run playsound minecraft:entity.experience_orb.pickup master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1
execute if score @s market_answer matches 2 run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.c7be64662aac","color":"red","bold":true}
execute if score @s market_answer matches 2 run playsound minecraft:entity.villager.no master @a[tag=rfm_participant] ~ ~ ~ 1 1 1
function rfm:task/action/economy/economy_1/result

#玩家完成一次交易后立即结束市场并进入统一结算
execute if score @s market_answer matches 1 run scoreboard players set @s market_correct 1
execute if score @s market_answer matches 2 run scoreboard players set @s market_correct 0
execute if score @s market_answer matches 1 run tellraw @a[tag=rfm_participant] {"text":"选择正确，这是20名商人中最实惠的交易！","color":"green","bold":true}
execute if score @s market_answer matches 1 run playsound minecraft:entity.experience_orb.pickup master @a[tag=rfm_participant] ~ ~ ~ 1 1.2 1
execute if score @s market_answer matches 2 run tellraw @a[tag=rfm_participant] {"text":"选择错误，这不是最实惠的交易。","color":"red","bold":true}
execute if score @s market_answer matches 2 run playsound minecraft:entity.villager.no master @a[tag=rfm_participant] ~ ~ ~ 1 1 1
function rfm:task/action/economy/economy_1/result

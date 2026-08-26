#执行民生决策任务的C方案并结算属性
execute if score @s decision_task matches 310 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 310 run scoreboard players add @s economy 2
execute if score @s decision_task matches 310 run scoreboard players add @s fame 2
execute if score @s decision_task matches 310 run tellraw @s [{"translate":"rfm.text.2c1ee0e5e842","color":"green"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"}]
execute if score @s decision_task matches 310 run scoreboard players set @s decision_task 0

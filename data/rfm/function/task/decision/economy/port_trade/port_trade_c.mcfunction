#执行经济决策任务的C方案并结算属性
execute if score @s decision_task matches 213 run scoreboard players add @s economy 4
execute if score @s decision_task matches 213 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 213 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 213 run tellraw @s [{"translate":"rfm.text.38a2b5593483","color":"green"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.5ee7110d02b1","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 213 run scoreboard players set @s decision_task 0

#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 108 run scoreboard players add @s fame 8
execute if score @s decision_task matches 108 run scoreboard players add @s economy 4
execute if score @s decision_task matches 108 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 108 run tellraw @s [{"translate":"rfm.text.8a489188e5ae","color":"red"},{"translate":"rfm.text.d5f8f0055544","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"}]
execute if score @s decision_task matches 108 run scoreboard players set @s decision_task 0

#执行经济决策任务的A方案并结算属性
execute if score @s decision_task matches 207 run scoreboard players add @s economy 4
execute if score @s decision_task matches 207 run scoreboard players add @s fame 2
execute if score @s decision_task matches 207 run scoreboard players remove @s welfare 4
execute if score @s decision_task matches 207 run tellraw @s [{"translate":"rfm.text.efada3f32976","color":"red"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.d51d2d52456e","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.fbddb2b05628","color":"red"}]
execute if score @s decision_task matches 207 run scoreboard players set @s decision_task 0

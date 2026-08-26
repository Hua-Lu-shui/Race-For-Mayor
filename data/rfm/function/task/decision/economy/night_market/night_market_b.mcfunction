#执行经济决策任务的B方案并结算属性
execute if score @s decision_task matches 205 run scoreboard players add @s economy 4
execute if score @s decision_task matches 205 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 205 run tellraw @s [{"translate":"rfm.text.b91d11503f99","color":"aqua"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"}]
execute if score @s decision_task matches 205 run scoreboard players set @s decision_task 0

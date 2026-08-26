#改变属性
execute if score @s decision_task matches 204 run scoreboard players add @s economy 4
execute if score @s decision_task matches 204 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 204 run tellraw @s [{"translate":"rfm.text.0ee0191f0607","color":"aqua"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"}]
#重置决策任务计分板
execute if score @s decision_task matches 204 run scoreboard players set @s decision_task 0
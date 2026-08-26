#执行名誉决策任务的A方案并结算属性
execute if score @s decision_task matches 114 run scoreboard players add @s fame 8
execute if score @s decision_task matches 114 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 114 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 114 run tellraw @s [{"translate":"rfm.text.b8816d91823d","color":"red"},{"translate":"rfm.text.d5f8f0055544","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.72d780b63e29","color":"yellow"}]
execute if score @s decision_task matches 114 run scoreboard players set @s decision_task 0

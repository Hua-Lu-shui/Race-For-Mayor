execute if score @s decision_task matches 413 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 413 run scoreboard players remove @s ecology 2
execute if score @s decision_task matches 413 run scoreboard players add @s economy 2
execute if score @s decision_task matches 413 run tellraw @s [{"translate":"rfm.text.7de34d054c3d","color":"green"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.08597c9fb827","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.b68792471274","color":"yellow"}]
execute if score @s decision_task matches 413 run scoreboard players set @s decision_task 0

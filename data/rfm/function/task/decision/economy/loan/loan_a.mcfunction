execute if score @s decision_task matches 204 run scoreboard players add @s economy 12
execute if score @s decision_task matches 204 run scoreboard players add @s welfare 4
execute if score @s decision_task matches 204 run scoreboard players remove @s fame 10
execute if score @s decision_task matches 204 run tellraw @s [{"translate":"rfm.text.ba835edd0ec1","color":"red"},{"translate":"rfm.text.647b221c9c2e","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.079b32848efd","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.15a5f2723ca2","color":"aqua"}]
execute if score @s decision_task matches 204 run scoreboard players set @s decision_task 0
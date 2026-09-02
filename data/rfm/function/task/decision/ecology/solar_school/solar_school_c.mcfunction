execute if score @s decision_task matches 412 run scoreboard players add @s economy 4
execute if score @s decision_task matches 412 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 412 run scoreboard players remove @s welfare 2
execute if score @s decision_task matches 412 run tellraw @s [{"translate":"rfm.text.f25930f35ecd","color":"green"},{"translate":"rfm.text.be96e443c44f","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.5ee7110d02b1","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.058e6e20214e","color":"red"}]
execute if score @s decision_task matches 412 run scoreboard players set @s decision_task 0

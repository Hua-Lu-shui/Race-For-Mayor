execute if score @s decision_task matches 119 run scoreboard players add @s fame 8
execute if score @s decision_task matches 119 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 119 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 119 run tellraw @s [{"translate":"rfm.text.6ca2bb32938c","color":"red"},{"translate":"rfm.text.d5f8f0055544","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.5ee7110d02b1","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.72d780b63e29","color":"yellow"}]
execute if score @s decision_task matches 119 run scoreboard players set @s decision_task 0

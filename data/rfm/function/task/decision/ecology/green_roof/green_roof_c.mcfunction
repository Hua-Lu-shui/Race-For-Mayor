execute if score @s decision_task matches 406 run scoreboard players add @s ecology 2
execute if score @s decision_task matches 406 run scoreboard players add @s economy 2
execute if score @s decision_task matches 406 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 406 run tellraw @s [{"translate":"rfm.text.31bd097a1983","color":"green"},{"translate":"rfm.text.5ee7110d02b1","color":"green"},{"text":"，","color":"gray"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 406 run scoreboard players set @s decision_task 0

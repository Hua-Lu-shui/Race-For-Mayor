execute if score @s decision_task matches 307 run scoreboard players add @s economy 2
execute if score @s decision_task matches 307 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 307 run scoreboard players remove @s fame 2
execute if score @s decision_task matches 307 run tellraw @s [{"translate":"rfm.text.4573fd29da22","color":"green"},{"translate":"rfm.text.b68792471274","color":"yellow"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.7cd41714bcfc","color":"aqua"}]
execute if score @s decision_task matches 307 run scoreboard players set @s decision_task 0

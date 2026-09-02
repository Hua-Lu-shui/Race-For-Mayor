execute if score @s decision_task matches 117 run scoreboard players add @s fame 10
execute if score @s decision_task matches 117 run scoreboard players add @s welfare 2
execute if score @s decision_task matches 117 run scoreboard players remove @s economy 4
execute if score @s decision_task matches 117 run tellraw @s [{"translate":"rfm.text.eafd1efbdaac","color":"red"},{"translate":"rfm.text.9154b82aecbd","color":"aqua"},{"text":"，","color":"gray"},{"translate":"rfm.text.347012d06208","color":"red"},{"text":"，","color":"gray"},{"translate":"rfm.text.72d780b63e29","color":"yellow"}]
execute if score @s decision_task matches 117 run scoreboard players set @s decision_task 0

scoreboard players set @s fitness_state 4
bossbar set rfm:fitness_time visible false

execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 40.. run scoreboard players add @s welfare 16
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 40.. run function rfm:ability/military/perfect
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 40.. run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.40d50b2e9b6e","color":"red","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.379faccd6692","color":"red"}]

execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 1..39 run scoreboard players add @s welfare 10
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches 1..39 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.40d50b2e9b6e","color":"red","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.eb74d16a4797","color":"red"}]

execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches ..0 run scoreboard players add @s welfare 4
execute if score @s fitness_checkpoint matches 5 if score @s fitness_time matches ..0 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.40d50b2e9b6e","color":"red","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.be1f9be13b3a","color":"red"}]
execute unless score @s fitness_checkpoint matches 5 run scoreboard players add @s welfare 4
execute unless score @s fitness_checkpoint matches 5 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.40d50b2e9b6e","color":"red","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.be1f9be13b3a","color":"red"}]

function rfm:attribute/minimum
function rfm:task/action/welfare/welfare_2/cleanup

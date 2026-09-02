scoreboard players set @s supply_state 4
bossbar set rfm:supply_time visible false

execute if score @s supply_completed matches 5 run scoreboard players add @s economy 16
execute if score @s supply_completed matches 5 run function rfm:ability/military/perfect
execute if score @s supply_completed matches 5 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.995a339f79c3","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.ced1081dcff3","color":"yellow"}]

execute if score @s supply_completed matches 3..4 run scoreboard players add @s economy 10
execute if score @s supply_completed matches 3..4 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.995a339f79c3","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.317269b7c340","color":"yellow"}]

execute if score @s supply_completed matches ..2 run scoreboard players add @s economy 4
execute if score @s supply_completed matches ..2 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.995a339f79c3","color":"yellow","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.a567bc2753db","color":"yellow"}]
function rfm:attribute/minimum
function rfm:task/action/economy/economy_4/cleanup

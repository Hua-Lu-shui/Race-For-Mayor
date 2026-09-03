execute unless score @s previous_action_player matches 0 run return 0
execute if score @s fame_lock matches 1 if score @s economy_lock matches 1 if score @s welfare_lock matches 1 if score @s ecology_lock matches 1 run return 0
scoreboard players add @s fame 1
scoreboard players add @s economy 1
scoreboard players add @s welfare 1
scoreboard players add @s ecology 1
function rfm:attribute/lock/enforce
tellraw @s [{"translate":"rfm.text.cb0e29c5748e","color":"green","bold":true},{"translate":"rfm.text.696371b806fa","color":"white"}]

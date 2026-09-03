execute unless score @s collection_slot1 matches 39 unless score @s collection_slot2 matches 39 unless score @s collection_slot3 matches 39 unless score @s collection_slot4 matches 39 unless score @s collection_slot5 matches 39 run return 0
execute if score @s fame_lock matches 1 if score @s economy_lock matches 1 if score @s welfare_lock matches 1 if score @s ecology_lock matches 1 run return 0
execute unless score @s fame_lock matches 1 run scoreboard players add @s fame 10
execute unless score @s economy_lock matches 1 run scoreboard players add @s economy 10
execute unless score @s welfare_lock matches 1 run scoreboard players add @s welfare 10
execute unless score @s ecology_lock matches 1 run scoreboard players add @s ecology 10
tellraw @s [{"translate":"rfm.text.3c33158852ba","color":"blue","bold":true},{"translate":"rfm.text.004c62cdeed3","color":"white"}]

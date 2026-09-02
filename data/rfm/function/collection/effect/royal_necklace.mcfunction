execute unless score @s collection_slot1 matches 29 unless score @s collection_slot2 matches 29 unless score @s collection_slot3 matches 29 unless score @s collection_slot4 matches 29 unless score @s collection_slot5 matches 29 run return 0
scoreboard players add @s fame 5
scoreboard players add @s economy 5
scoreboard players add @s welfare 5
scoreboard players add @s ecology 5
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.7 1.3
tellraw @s [{"translate":"rfm.text.5437f935e146","color":"gold","bold":true},{"translate":"rfm.text.a365c9d72bdf","color":"white"}]

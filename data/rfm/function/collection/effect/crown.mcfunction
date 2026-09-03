execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.7 1.2 1
execute unless score @s collection_slot1 matches 27 unless score @s collection_slot2 matches 27 unless score @s collection_slot3 matches 27 unless score @s collection_slot4 matches 27 unless score @s collection_slot5 matches 27 run return 0
execute if score @s fame_lock matches 1 if score @s economy_lock matches 1 if score @s welfare_lock matches 1 if score @s ecology_lock matches 1 run return 0
scoreboard players add @s fame 5
scoreboard players add @s economy 5
scoreboard players add @s welfare 5
scoreboard players add @s ecology 5
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
tellraw @s [{"translate":"rfm.text.50f670ca7e81","color":"gold","bold":true},{"translate":"rfm.text.f118b5bfc2d0","color":"white"}]

#“王冠”：获得头衔时所有属性+5
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.7 1.2 1
execute unless score @s collection_slot1 matches 27 unless score @s collection_slot2 matches 27 unless score @s collection_slot3 matches 27 run return 0
scoreboard players add @s fame 5
scoreboard players add @s economy 5
scoreboard players add @s welfare 5
scoreboard players add @s ecology 5
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
tellraw @s [{"text":"【王冠】","color":"gold","bold":true},{"text":"你获得了头衔，所有属性 +5。","color":"white"}]

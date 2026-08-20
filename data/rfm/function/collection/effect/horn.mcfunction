#“喇叭”：回合开始时名誉+6，其余属性-1
execute unless score @s collection_slot1 matches 38 unless score @s collection_slot2 matches 38 unless score @s collection_slot3 matches 38 run return 0
scoreboard players add @s fame 6
scoreboard players remove @s economy 1
scoreboard players remove @s welfare 1
scoreboard players remove @s ecology 1
tellraw @s [{"text":"【喇叭】","color":"green","bold":true},{"text":"本回合开始，名誉 +6，其余属性 -1。","color":"white"}]

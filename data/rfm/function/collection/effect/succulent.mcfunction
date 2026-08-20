#“多肉植物”：回合开始时生态+6，其余属性-1
execute unless score @s collection_slot1 matches 35 unless score @s collection_slot2 matches 35 unless score @s collection_slot3 matches 35 run return 0
scoreboard players remove @s fame 1
scoreboard players remove @s economy 1
scoreboard players remove @s welfare 1
scoreboard players add @s ecology 6
tellraw @s [{"text":"【多肉植物】","color":"green","bold":true},{"text":"本回合开始，生态 +6，其余属性 -1。","color":"white"}]

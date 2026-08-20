#“纸飞机”：回合开始时民生+6，其余属性-1
execute unless score @s collection_slot1 matches 36 unless score @s collection_slot2 matches 36 unless score @s collection_slot3 matches 36 run return 0
scoreboard players remove @s fame 1
scoreboard players remove @s economy 1
scoreboard players add @s welfare 6
scoreboard players remove @s ecology 1
tellraw @s [{"text":"【纸飞机】","color":"green","bold":true},{"text":"本回合开始，民生 +6，其余属性 -1。","color":"white"}]

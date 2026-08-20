#“单片眼镜”：回合开始时经济+6，其余属性-1
execute unless score @s collection_slot1 matches 37 unless score @s collection_slot2 matches 37 unless score @s collection_slot3 matches 37 run return 0
scoreboard players remove @s fame 1
scoreboard players add @s economy 6
scoreboard players remove @s welfare 1
scoreboard players remove @s ecology 1
tellraw @s [{"text":"【单片眼镜】","color":"green","bold":true},{"text":"本回合开始，经济 +6，其余属性 -1。","color":"white"}]

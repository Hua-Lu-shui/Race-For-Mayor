#“不稳定装置”：回合开始时随机一项属性+5
execute unless score @s collection_slot1 matches 34 unless score @s collection_slot2 matches 34 unless score @s collection_slot3 matches 34 run return 0
execute store result score @s collection_effect_pick run random value 1..4
execute if score @s collection_effect_pick matches 1 run scoreboard players add @s fame 5
execute if score @s collection_effect_pick matches 2 run scoreboard players add @s economy 5
execute if score @s collection_effect_pick matches 3 run scoreboard players add @s welfare 5
execute if score @s collection_effect_pick matches 4 run scoreboard players add @s ecology 5
execute if score @s collection_effect_pick matches 1 run tellraw @s [{"text":"【不稳定装置】","color":"blue","bold":true},{"text":"本回合开始，随机选中名誉，名誉 +5。","color":"white"}]
execute if score @s collection_effect_pick matches 2 run tellraw @s [{"text":"【不稳定装置】","color":"blue","bold":true},{"text":"本回合开始，随机选中经济，经济 +5。","color":"white"}]
execute if score @s collection_effect_pick matches 3 run tellraw @s [{"text":"【不稳定装置】","color":"blue","bold":true},{"text":"本回合开始，随机选中民生，民生 +5。","color":"white"}]
execute if score @s collection_effect_pick matches 4 run tellraw @s [{"text":"【不稳定装置】","color":"blue","bold":true},{"text":"本回合开始，随机选中生态，生态 +5。","color":"white"}]

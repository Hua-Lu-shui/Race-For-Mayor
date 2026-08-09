#16-23号藏品：回合开始时固定属性加成；相同藏品只生效一次
execute if score @s collection_slot1 matches 16 run scoreboard players add @s ecology 2
execute unless score @s collection_slot1 matches 16 if score @s collection_slot2 matches 16 run scoreboard players add @s ecology 2
execute unless score @s collection_slot1 matches 16 unless score @s collection_slot2 matches 16 if score @s collection_slot3 matches 16 run scoreboard players add @s ecology 2
execute if score @s collection_slot1 matches 17 run scoreboard players add @s ecology 3
execute unless score @s collection_slot1 matches 17 if score @s collection_slot2 matches 17 run scoreboard players add @s ecology 3
execute unless score @s collection_slot1 matches 17 unless score @s collection_slot2 matches 17 if score @s collection_slot3 matches 17 run scoreboard players add @s ecology 3
execute if score @s collection_slot1 matches 18 run scoreboard players add @s welfare 2
execute unless score @s collection_slot1 matches 18 if score @s collection_slot2 matches 18 run scoreboard players add @s welfare 2
execute unless score @s collection_slot1 matches 18 unless score @s collection_slot2 matches 18 if score @s collection_slot3 matches 18 run scoreboard players add @s welfare 2
execute if score @s collection_slot1 matches 19 run scoreboard players add @s welfare 3
execute unless score @s collection_slot1 matches 19 if score @s collection_slot2 matches 19 run scoreboard players add @s welfare 3
execute unless score @s collection_slot1 matches 19 unless score @s collection_slot2 matches 19 if score @s collection_slot3 matches 19 run scoreboard players add @s welfare 3
execute if score @s collection_slot1 matches 20 run scoreboard players add @s economy 2
execute unless score @s collection_slot1 matches 20 if score @s collection_slot2 matches 20 run scoreboard players add @s economy 2
execute unless score @s collection_slot1 matches 20 unless score @s collection_slot2 matches 20 if score @s collection_slot3 matches 20 run scoreboard players add @s economy 2
execute if score @s collection_slot1 matches 21 run scoreboard players add @s economy 3
execute unless score @s collection_slot1 matches 21 if score @s collection_slot2 matches 21 run scoreboard players add @s economy 3
execute unless score @s collection_slot1 matches 21 unless score @s collection_slot2 matches 21 if score @s collection_slot3 matches 21 run scoreboard players add @s economy 3
execute if score @s collection_slot1 matches 22 run scoreboard players add @s fame 2
execute unless score @s collection_slot1 matches 22 if score @s collection_slot2 matches 22 run scoreboard players add @s fame 2
execute unless score @s collection_slot1 matches 22 unless score @s collection_slot2 matches 22 if score @s collection_slot3 matches 22 run scoreboard players add @s fame 2
execute if score @s collection_slot1 matches 23 run scoreboard players add @s fame 3
execute unless score @s collection_slot1 matches 23 if score @s collection_slot2 matches 23 run scoreboard players add @s fame 3
execute unless score @s collection_slot1 matches 23 unless score @s collection_slot2 matches 23 if score @s collection_slot3 matches 23 run scoreboard players add @s fame 3
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
execute if score @s collection_slot1 matches 16 run tellraw @s [{"text":"【护目镜】","color":"green","bold":true},{"text":"本回合开始，生态 +2。","color":"white"}]
execute unless score @s collection_slot1 matches 16 if score @s collection_slot2 matches 16 run tellraw @s [{"text":"【护目镜】","color":"green","bold":true},{"text":"本回合开始，生态 +2。","color":"white"}]
execute unless score @s collection_slot1 matches 16 unless score @s collection_slot2 matches 16 if score @s collection_slot3 matches 16 run tellraw @s [{"text":"【护目镜】","color":"green","bold":true},{"text":"本回合开始，生态 +2。","color":"white"}]
execute if score @s collection_slot1 matches 17 run tellraw @s [{"text":"【不知名种子】","color":"blue","bold":true},{"text":"本回合开始，生态 +3。","color":"white"}]
execute unless score @s collection_slot1 matches 17 if score @s collection_slot2 matches 17 run tellraw @s [{"text":"【不知名种子】","color":"blue","bold":true},{"text":"本回合开始，生态 +3。","color":"white"}]
execute unless score @s collection_slot1 matches 17 unless score @s collection_slot2 matches 17 if score @s collection_slot3 matches 17 run tellraw @s [{"text":"【不知名种子】","color":"blue","bold":true},{"text":"本回合开始，生态 +3。","color":"white"}]
execute if score @s collection_slot1 matches 18 run tellraw @s [{"text":"【玩具熊】","color":"green","bold":true},{"text":"本回合开始，民生 +2。","color":"white"}]
execute unless score @s collection_slot1 matches 18 if score @s collection_slot2 matches 18 run tellraw @s [{"text":"【玩具熊】","color":"green","bold":true},{"text":"本回合开始，民生 +2。","color":"white"}]
execute unless score @s collection_slot1 matches 18 unless score @s collection_slot2 matches 18 if score @s collection_slot3 matches 18 run tellraw @s [{"text":"【玩具熊】","color":"green","bold":true},{"text":"本回合开始，民生 +2。","color":"white"}]
execute if score @s collection_slot1 matches 19 run tellraw @s [{"text":"【礼品盒】","color":"blue","bold":true},{"text":"本回合开始，民生 +3。","color":"white"}]
execute unless score @s collection_slot1 matches 19 if score @s collection_slot2 matches 19 run tellraw @s [{"text":"【礼品盒】","color":"blue","bold":true},{"text":"本回合开始，民生 +3。","color":"white"}]
execute unless score @s collection_slot1 matches 19 unless score @s collection_slot2 matches 19 if score @s collection_slot3 matches 19 run tellraw @s [{"text":"【礼品盒】","color":"blue","bold":true},{"text":"本回合开始，民生 +3。","color":"white"}]
execute if score @s collection_slot1 matches 20 run tellraw @s [{"text":"【招财猫】","color":"green","bold":true},{"text":"本回合开始，经济 +2。","color":"white"}]
execute unless score @s collection_slot1 matches 20 if score @s collection_slot2 matches 20 run tellraw @s [{"text":"【招财猫】","color":"green","bold":true},{"text":"本回合开始，经济 +2。","color":"white"}]
execute unless score @s collection_slot1 matches 20 unless score @s collection_slot2 matches 20 if score @s collection_slot3 matches 20 run tellraw @s [{"text":"【招财猫】","color":"green","bold":true},{"text":"本回合开始，经济 +2。","color":"white"}]
execute if score @s collection_slot1 matches 21 run tellraw @s [{"text":"【摇钱树】","color":"blue","bold":true},{"text":"本回合开始，经济 +3。","color":"white"}]
execute unless score @s collection_slot1 matches 21 if score @s collection_slot2 matches 21 run tellraw @s [{"text":"【摇钱树】","color":"blue","bold":true},{"text":"本回合开始，经济 +3。","color":"white"}]
execute unless score @s collection_slot1 matches 21 unless score @s collection_slot2 matches 21 if score @s collection_slot3 matches 21 run tellraw @s [{"text":"【摇钱树】","color":"blue","bold":true},{"text":"本回合开始，经济 +3。","color":"white"}]
execute if score @s collection_slot1 matches 22 run tellraw @s [{"text":"【华丽的面具】","color":"green","bold":true},{"text":"本回合开始，名誉 +2。","color":"white"}]
execute unless score @s collection_slot1 matches 22 if score @s collection_slot2 matches 22 run tellraw @s [{"text":"【华丽的面具】","color":"green","bold":true},{"text":"本回合开始，名誉 +2。","color":"white"}]
execute unless score @s collection_slot1 matches 22 unless score @s collection_slot2 matches 22 if score @s collection_slot3 matches 22 run tellraw @s [{"text":"【华丽的面具】","color":"green","bold":true},{"text":"本回合开始，名誉 +2。","color":"white"}]
execute if score @s collection_slot1 matches 23 run tellraw @s [{"text":"【礼服】","color":"blue","bold":true},{"text":"本回合开始，名誉 +3。","color":"white"}]
execute unless score @s collection_slot1 matches 23 if score @s collection_slot2 matches 23 run tellraw @s [{"text":"【礼服】","color":"blue","bold":true},{"text":"本回合开始，名誉 +3。","color":"white"}]
execute unless score @s collection_slot1 matches 23 unless score @s collection_slot2 matches 23 if score @s collection_slot3 matches 23 run tellraw @s [{"text":"【礼服】","color":"blue","bold":true},{"text":"本回合开始，名誉 +3。","color":"white"}]

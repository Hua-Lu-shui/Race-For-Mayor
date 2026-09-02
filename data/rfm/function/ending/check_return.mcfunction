execute unless score #settle_state settle_state matches 4 run scoreboard players set @s ending_return 0
execute unless score #settle_state settle_state matches 4 run return 0
execute positioned 49 -57 23 unless entity @s[distance=..6] run scoreboard players set @s ending_return 0
execute positioned 49 -57 23 unless entity @s[distance=..6] run return 0
execute if score @s ending_return matches 1 run function rfm:ending/return_to_spawn
scoreboard players set @s ending_return 0

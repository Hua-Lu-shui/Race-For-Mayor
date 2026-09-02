scoreboard players set @s ability_trigger 0
execute if score @s economy < @s ability_economy run scoreboard players set @s ability_trigger 1
execute if score @s economy < @s ability_economy run scoreboard players operation @s economy = @s ability_economy
execute if score @s welfare < @s ability_welfare run scoreboard players set @s ability_trigger 1
execute if score @s welfare < @s ability_welfare run scoreboard players operation @s welfare = @s ability_welfare
execute if score @s ecology < @s ability_ecology run scoreboard players set @s ability_trigger 1
execute if score @s ecology < @s ability_ecology run scoreboard players operation @s ecology = @s ability_ecology
execute if score @s ability_trigger matches 1 run tellraw @s [{"translate":"rfm.text.dda2f374dd38","color":"aqua","bold":true},{"translate":"rfm.text.a4a4e24310f8","color":"white"}]

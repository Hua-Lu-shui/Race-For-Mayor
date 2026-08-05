#若非名誉属性低于本回合任务开始前的值，则返还差额；任务带来的提升予以保留
scoreboard players set @s ability_trigger 0
execute if score @s economy < @s ability_economy run scoreboard players set @s ability_trigger 1
execute if score @s economy < @s ability_economy run scoreboard players operation @s economy = @s ability_economy
execute if score @s welfare < @s ability_welfare run scoreboard players set @s ability_trigger 1
execute if score @s welfare < @s ability_welfare run scoreboard players operation @s welfare = @s ability_welfare
execute if score @s ecology < @s ability_ecology run scoreboard players set @s ability_trigger 1
execute if score @s ecology < @s ability_ecology run scoreboard players operation @s ecology = @s ability_ecology
execute if score @s ability_trigger matches 1 run tellraw @s [{"text":"【粉丝效应】","color":"aqua","bold":true},{"text":"每回合结束：已返还因任务而降低的除名誉外的属性。","color":"white"}]

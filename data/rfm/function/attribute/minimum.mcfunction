#确保玩家各项属性不会低于0
execute if score @s fame matches ..-1 run scoreboard players set @s fame 0
execute if score @s economy matches ..-1 run scoreboard players set @s economy 0
execute if score @s welfare matches ..-1 run scoreboard players set @s welfare 0
execute if score @s ecology matches ..-1 run scoreboard players set @s ecology 0

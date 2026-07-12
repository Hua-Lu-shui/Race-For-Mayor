#只检查当前执行玩家；由属性实际发生变化的函数调用
execute if score @s fame matches ..-1 run scoreboard players set @s fame 0
execute if score @s economy matches ..-1 run scoreboard players set @s economy 0
execute if score @s welfare matches ..-1 run scoreboard players set @s welfare 0
execute if score @s ecology matches ..-1 run scoreboard players set @s ecology 0

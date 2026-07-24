#执行candidate函数对应的游戏流程
#所有新加入或重置的玩家使用原版击退抗性
attribute @s minecraft:generic.knockback_resistance base set 0
#默认职业为公务员
scoreboard players set @s candidate 5
team join official @s
#赋予公务员属性
scoreboard players set @s welfare 10
scoreboard players set @s fame 10
scoreboard players set @s economy 10
scoreboard players set @s ecology 10
function rfm:attribute/minimum

#执行minimum函数对应的游戏流程
#确保玩家各项属性不会低于0
execute if score @s fame matches ..-1 run scoreboard players set @s fame 0
execute if score @s economy matches ..-1 run scoreboard players set @s economy 0
execute if score @s welfare matches ..-1 run scoreboard players set @s welfare 0
execute if score @s ecology matches ..-1 run scoreboard players set @s ecology 0
execute if score @s candidate matches 1.. if score @s fame matches ..0 unless entity @s[advancements={rfm:title/restart=true}] run function rfm:title/award/restart
execute if score @s candidate matches 1.. if score @s economy matches ..0 unless entity @s[advancements={rfm:title/restart=true}] run function rfm:title/award/restart
execute if score @s candidate matches 1.. if score @s welfare matches ..0 unless entity @s[advancements={rfm:title/restart=true}] run function rfm:title/award/restart
execute if score @s candidate matches 1.. if score @s ecology matches ..0 unless entity @s[advancements={rfm:title/restart=true}] run function rfm:title/award/restart

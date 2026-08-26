#“富人思维”：回合开始时，经济并列为最高属性也满足条件
scoreboard players set @s ability_trigger 0
execute if score @s economy >= @s fame if score @s economy >= @s welfare if score @s economy >= @s ecology run scoreboard players set @s ability_trigger 1
execute if score @s ability_trigger matches 1 unless score @s fame_lock matches 1 run scoreboard players add @s fame 1
execute if score @s ability_trigger matches 1 unless score @s welfare_lock matches 1 run scoreboard players add @s welfare 1
execute if score @s ability_trigger matches 1 unless score @s ecology_lock matches 1 run scoreboard players add @s ecology 1
execute if score @s ability_trigger matches 1 run tellraw @s [{"translate":"rfm.text.bbbe0403012e","color":"yellow","bold":true},{"translate":"rfm.text.73fdacf16d29","color":"white"}]

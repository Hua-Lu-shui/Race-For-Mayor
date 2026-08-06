#计算玩家当前最高属性
scoreboard players operation @s collection_highest = @s fame
execute if score @s economy > @s collection_highest run scoreboard players operation @s collection_highest = @s economy
execute if score @s welfare > @s collection_highest run scoreboard players operation @s collection_highest = @s welfare
execute if score @s ecology > @s collection_highest run scoreboard players operation @s collection_highest = @s ecology

#以1/2/4/8记录名誉/经济/民生/生态是否并列最高
scoreboard players set @s collection_tie_mask 0
execute if score @s fame = @s collection_highest run scoreboard players add @s collection_tie_mask 1
execute if score @s economy = @s collection_highest run scoreboard players add @s collection_tie_mask 2
execute if score @s welfare = @s collection_highest run scoreboard players add @s collection_tie_mask 4
execute if score @s ecology = @s collection_highest run scoreboard players add @s collection_tie_mask 8
scoreboard players set @s collection_pay_pick 1

#仅有一个最高属性时直接选中
execute if score @s collection_tie_mask matches 1 run scoreboard players set @s collection_attr 1
execute if score @s collection_tie_mask matches 2 run scoreboard players set @s collection_attr 2
execute if score @s collection_tie_mask matches 4 run scoreboard players set @s collection_attr 3
execute if score @s collection_tie_mask matches 8 run scoreboard players set @s collection_attr 4

#并列最高时等概率选择其中一项
execute if score @s collection_tie_mask matches 3 store result score @s collection_pay_pick run random value 1..2
execute if score @s collection_tie_mask matches 3 if score @s collection_pay_pick matches 1 run scoreboard players set @s collection_attr 1
execute if score @s collection_tie_mask matches 3 if score @s collection_pay_pick matches 2 run scoreboard players set @s collection_attr 2
execute if score @s collection_tie_mask matches 5 store result score @s collection_pay_pick run random value 1..2
execute if score @s collection_tie_mask matches 5 if score @s collection_pay_pick matches 1 run scoreboard players set @s collection_attr 1
execute if score @s collection_tie_mask matches 5 if score @s collection_pay_pick matches 2 run scoreboard players set @s collection_attr 3
execute if score @s collection_tie_mask matches 9 store result score @s collection_pay_pick run random value 1..2
execute if score @s collection_tie_mask matches 9 if score @s collection_pay_pick matches 1 run scoreboard players set @s collection_attr 1
execute if score @s collection_tie_mask matches 9 if score @s collection_pay_pick matches 2 run scoreboard players set @s collection_attr 4
execute if score @s collection_tie_mask matches 6 store result score @s collection_pay_pick run random value 1..2
execute if score @s collection_tie_mask matches 6 if score @s collection_pay_pick matches 1 run scoreboard players set @s collection_attr 2
execute if score @s collection_tie_mask matches 6 if score @s collection_pay_pick matches 2 run scoreboard players set @s collection_attr 3
execute if score @s collection_tie_mask matches 10 store result score @s collection_pay_pick run random value 1..2
execute if score @s collection_tie_mask matches 10 if score @s collection_pay_pick matches 1 run scoreboard players set @s collection_attr 2
execute if score @s collection_tie_mask matches 10 if score @s collection_pay_pick matches 2 run scoreboard players set @s collection_attr 4
execute if score @s collection_tie_mask matches 12 store result score @s collection_pay_pick run random value 1..2
execute if score @s collection_tie_mask matches 12 if score @s collection_pay_pick matches 1 run scoreboard players set @s collection_attr 3
execute if score @s collection_tie_mask matches 12 if score @s collection_pay_pick matches 2 run scoreboard players set @s collection_attr 4
execute if score @s collection_tie_mask matches 7 store result score @s collection_pay_pick run random value 1..3
execute if score @s collection_tie_mask matches 7 if score @s collection_pay_pick matches 1 run scoreboard players set @s collection_attr 1
execute if score @s collection_tie_mask matches 7 if score @s collection_pay_pick matches 2 run scoreboard players set @s collection_attr 2
execute if score @s collection_tie_mask matches 7 if score @s collection_pay_pick matches 3 run scoreboard players set @s collection_attr 3
execute if score @s collection_tie_mask matches 11 store result score @s collection_pay_pick run random value 1..3
execute if score @s collection_tie_mask matches 11 if score @s collection_pay_pick matches 1 run scoreboard players set @s collection_attr 1
execute if score @s collection_tie_mask matches 11 if score @s collection_pay_pick matches 2 run scoreboard players set @s collection_attr 2
execute if score @s collection_tie_mask matches 11 if score @s collection_pay_pick matches 3 run scoreboard players set @s collection_attr 4
execute if score @s collection_tie_mask matches 13 store result score @s collection_pay_pick run random value 1..3
execute if score @s collection_tie_mask matches 13 if score @s collection_pay_pick matches 1 run scoreboard players set @s collection_attr 1
execute if score @s collection_tie_mask matches 13 if score @s collection_pay_pick matches 2 run scoreboard players set @s collection_attr 3
execute if score @s collection_tie_mask matches 13 if score @s collection_pay_pick matches 3 run scoreboard players set @s collection_attr 4
execute if score @s collection_tie_mask matches 14 store result score @s collection_pay_pick run random value 1..3
execute if score @s collection_tie_mask matches 14 if score @s collection_pay_pick matches 1 run scoreboard players set @s collection_attr 2
execute if score @s collection_tie_mask matches 14 if score @s collection_pay_pick matches 2 run scoreboard players set @s collection_attr 3
execute if score @s collection_tie_mask matches 14 if score @s collection_pay_pick matches 3 run scoreboard players set @s collection_attr 4
execute if score @s collection_tie_mask matches 15 store result score @s collection_pay_pick run random value 1..4
execute if score @s collection_tie_mask matches 15 run scoreboard players operation @s collection_attr = @s collection_pay_pick

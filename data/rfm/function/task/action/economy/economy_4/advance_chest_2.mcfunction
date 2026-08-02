#沿二十四个箱子循环前进两格，保证五件必需品不会落入同一箱子
scoreboard players add #supply_chest supply_order 2
execute if score #supply_chest supply_order matches 25.. run scoreboard players remove #supply_chest supply_order 24

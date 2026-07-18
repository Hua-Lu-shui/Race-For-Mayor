#先生成所有大箱子的随机物资，再最后写入八件任务物资，防止首次开箱时被战利品表覆盖
function rfm:task/action/economy/economy_4/stock_fillers
execute store result score #supply_base supply_order run random value 1..12
scoreboard players operation #supply_chest supply_order = #supply_base supply_order
execute if score @s supply_order matches 1 run function rfm:task/action/economy/economy_4/stock_order_1
execute if score @s supply_order matches 2 run function rfm:task/action/economy/economy_4/stock_order_2
execute if score @s supply_order matches 3 run function rfm:task/action/economy/economy_4/stock_order_3

#根据本局订单组合生成五家店铺的缺货标签
execute if score @s supply_order matches 1 run function rfm:task/action/economy/economy_4/order_1
execute if score @s supply_order matches 2 run function rfm:task/action/economy/economy_4/order_2
execute if score @s supply_order matches 3 run function rfm:task/action/economy/economy_4/order_3

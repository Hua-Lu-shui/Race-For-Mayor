#清空刚刚发车的线路
execute if score @s bus_answer matches 1 run function rfm:task/action/welfare/welfare_4/clear_line_1
execute if score @s bus_answer matches 2 run function rfm:task/action/welfare/welfare_4/clear_line_2
execute if score @s bus_answer matches 3 run function rfm:task/action/welfare/welfare_4/clear_line_3

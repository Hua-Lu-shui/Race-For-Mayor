kill @e[type=minecraft:text_display,tag=rfm_employment_label]
execute if score @s employment_layout matches 1 run function rfm:task/action/economy/economy_5/layout_1
execute if score @s employment_layout matches 2 run function rfm:task/action/economy/economy_5/layout_2
execute if score @s employment_layout matches 3 run function rfm:task/action/economy/economy_5/layout_3

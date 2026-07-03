#检查属性选择计分板匹配项
execute as @a if score @s attribute_choice matches 1 run function rfm:task/attribute/choose_fame
execute as @a if score @s attribute_choice matches 2 run function rfm:task/attribute/choose_economy
execute as @a if score @s attribute_choice matches 3 run function rfm:task/attribute/choose_welfare
execute as @a if score @s attribute_choice matches 4 run function rfm:task/attribute/choose_ecology
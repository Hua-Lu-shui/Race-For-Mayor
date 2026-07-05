#检查属性选择计分板匹配项
execute if score #choose_time choose_time matches 1.. as @a unless score @s action_player matches 1 if score @s attribute_choice matches 1 if score @s attribute_choice = @s attribute_option_1 run function rfm:task/attribute/choose_fame
execute if score #choose_time choose_time matches 1.. as @a unless score @s action_player matches 1 if score @s attribute_choice matches 1 if score @s attribute_choice = @s attribute_option_2 run function rfm:task/attribute/choose_fame
execute if score #choose_time choose_time matches 1.. as @a unless score @s action_player matches 1 if score @s attribute_choice matches 1 if score @s attribute_choice = @s attribute_option_3 run function rfm:task/attribute/choose_fame

execute if score #choose_time choose_time matches 1.. as @a unless score @s action_player matches 1 if score @s attribute_choice matches 2 if score @s attribute_choice = @s attribute_option_1 run function rfm:task/attribute/choose_economy
execute if score #choose_time choose_time matches 1.. as @a unless score @s action_player matches 1 if score @s attribute_choice matches 2 if score @s attribute_choice = @s attribute_option_2 run function rfm:task/attribute/choose_economy
execute if score #choose_time choose_time matches 1.. as @a unless score @s action_player matches 1 if score @s attribute_choice matches 2 if score @s attribute_choice = @s attribute_option_3 run function rfm:task/attribute/choose_economy

execute if score #choose_time choose_time matches 1.. as @a unless score @s action_player matches 1 if score @s attribute_choice matches 3 if score @s attribute_choice = @s attribute_option_1 run function rfm:task/attribute/choose_welfare
execute if score #choose_time choose_time matches 1.. as @a unless score @s action_player matches 1 if score @s attribute_choice matches 3 if score @s attribute_choice = @s attribute_option_2 run function rfm:task/attribute/choose_welfare
execute if score #choose_time choose_time matches 1.. as @a unless score @s action_player matches 1 if score @s attribute_choice matches 3 if score @s attribute_choice = @s attribute_option_3 run function rfm:task/attribute/choose_welfare

execute if score #choose_time choose_time matches 1.. as @a unless score @s action_player matches 1 if score @s attribute_choice matches 4 if score @s attribute_choice = @s attribute_option_1 run function rfm:task/attribute/choose_ecology
execute if score #choose_time choose_time matches 1.. as @a unless score @s action_player matches 1 if score @s attribute_choice matches 4 if score @s attribute_choice = @s attribute_option_2 run function rfm:task/attribute/choose_ecology
execute if score #choose_time choose_time matches 1.. as @a unless score @s action_player matches 1 if score @s attribute_choice matches 4 if score @s attribute_choice = @s attribute_option_3 run function rfm:task/attribute/choose_ecology

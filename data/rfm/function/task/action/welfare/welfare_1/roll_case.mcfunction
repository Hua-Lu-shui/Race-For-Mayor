#随机抽取一个本局尚未出现的病例
execute store result score @s hospital_case run random value 1..12
execute if score @s hospital_case matches 1 if score @s hospital_used_1 matches 1 run function rfm:task/action/welfare/welfare_1/roll_case
execute if score @s hospital_case matches 2 if score @s hospital_used_2 matches 1 run function rfm:task/action/welfare/welfare_1/roll_case
execute if score @s hospital_case matches 3 if score @s hospital_used_3 matches 1 run function rfm:task/action/welfare/welfare_1/roll_case
execute if score @s hospital_case matches 4 if score @s hospital_used_4 matches 1 run function rfm:task/action/welfare/welfare_1/roll_case
execute if score @s hospital_case matches 5 if score @s hospital_used_5 matches 1 run function rfm:task/action/welfare/welfare_1/roll_case
execute if score @s hospital_case matches 6 if score @s hospital_used_6 matches 1 run function rfm:task/action/welfare/welfare_1/roll_case
execute if score @s hospital_case matches 7 if score @s hospital_used_7 matches 1 run function rfm:task/action/welfare/welfare_1/roll_case
execute if score @s hospital_case matches 8 if score @s hospital_used_8 matches 1 run function rfm:task/action/welfare/welfare_1/roll_case
execute if score @s hospital_case matches 9 if score @s hospital_used_9 matches 1 run function rfm:task/action/welfare/welfare_1/roll_case
execute if score @s hospital_case matches 10 if score @s hospital_used_10 matches 1 run function rfm:task/action/welfare/welfare_1/roll_case
execute if score @s hospital_case matches 11 if score @s hospital_used_11 matches 1 run function rfm:task/action/welfare/welfare_1/roll_case
execute if score @s hospital_case matches 12 if score @s hospital_used_12 matches 1 run function rfm:task/action/welfare/welfare_1/roll_case

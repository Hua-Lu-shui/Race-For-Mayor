#随机选择三条健身路线之一
execute store result score @s fitness_course run random value 1..3
execute if score @s fitness_course matches 1 run function rfm:task/action/welfare/welfare_2/course_1
execute if score @s fitness_course matches 2 run function rfm:task/action/welfare/welfare_2/course_2
execute if score @s fitness_course matches 3 run function rfm:task/action/welfare/welfare_2/course_3

#将五个随机身份写入函数宏参数，并生成一本六页站位册
kill @e[type=minecraft:text_display,tag=rfm_photo_requirement]
data modify storage rfm:photo_book roles set value {}

execute if score @s photo_target_1 matches 1 run data modify storage rfm:photo_book roles.role_1 set value "医生"
execute if score @s photo_target_1 matches 2 run data modify storage rfm:photo_book roles.role_1 set value "教师"
execute if score @s photo_target_1 matches 3 run data modify storage rfm:photo_book roles.role_1 set value "农民"
execute if score @s photo_target_1 matches 4 run data modify storage rfm:photo_book roles.role_1 set value "建筑工"
execute if score @s photo_target_1 matches 5 run data modify storage rfm:photo_book roles.role_1 set value "商人"
execute if score @s photo_target_1 matches 6 run data modify storage rfm:photo_book roles.role_1 set value "图书管理员"
execute if score @s photo_target_1 matches 7 run data modify storage rfm:photo_book roles.role_1 set value "渔民"
execute if score @s photo_target_1 matches 8 run data modify storage rfm:photo_book roles.role_1 set value "普通居民"

execute if score @s photo_target_2 matches 1 run data modify storage rfm:photo_book roles.role_2 set value "医生"
execute if score @s photo_target_2 matches 2 run data modify storage rfm:photo_book roles.role_2 set value "教师"
execute if score @s photo_target_2 matches 3 run data modify storage rfm:photo_book roles.role_2 set value "农民"
execute if score @s photo_target_2 matches 4 run data modify storage rfm:photo_book roles.role_2 set value "建筑工"
execute if score @s photo_target_2 matches 5 run data modify storage rfm:photo_book roles.role_2 set value "商人"
execute if score @s photo_target_2 matches 6 run data modify storage rfm:photo_book roles.role_2 set value "图书管理员"
execute if score @s photo_target_2 matches 7 run data modify storage rfm:photo_book roles.role_2 set value "渔民"
execute if score @s photo_target_2 matches 8 run data modify storage rfm:photo_book roles.role_2 set value "普通居民"

execute if score @s photo_target_3 matches 1 run data modify storage rfm:photo_book roles.role_3 set value "医生"
execute if score @s photo_target_3 matches 2 run data modify storage rfm:photo_book roles.role_3 set value "教师"
execute if score @s photo_target_3 matches 3 run data modify storage rfm:photo_book roles.role_3 set value "农民"
execute if score @s photo_target_3 matches 4 run data modify storage rfm:photo_book roles.role_3 set value "建筑工"
execute if score @s photo_target_3 matches 5 run data modify storage rfm:photo_book roles.role_3 set value "商人"
execute if score @s photo_target_3 matches 6 run data modify storage rfm:photo_book roles.role_3 set value "图书管理员"
execute if score @s photo_target_3 matches 7 run data modify storage rfm:photo_book roles.role_3 set value "渔民"
execute if score @s photo_target_3 matches 8 run data modify storage rfm:photo_book roles.role_3 set value "普通居民"

execute if score @s photo_target_4 matches 1 run data modify storage rfm:photo_book roles.role_4 set value "医生"
execute if score @s photo_target_4 matches 2 run data modify storage rfm:photo_book roles.role_4 set value "教师"
execute if score @s photo_target_4 matches 3 run data modify storage rfm:photo_book roles.role_4 set value "农民"
execute if score @s photo_target_4 matches 4 run data modify storage rfm:photo_book roles.role_4 set value "建筑工"
execute if score @s photo_target_4 matches 5 run data modify storage rfm:photo_book roles.role_4 set value "商人"
execute if score @s photo_target_4 matches 6 run data modify storage rfm:photo_book roles.role_4 set value "图书管理员"
execute if score @s photo_target_4 matches 7 run data modify storage rfm:photo_book roles.role_4 set value "渔民"
execute if score @s photo_target_4 matches 8 run data modify storage rfm:photo_book roles.role_4 set value "普通居民"

execute if score @s photo_target_5 matches 1 run data modify storage rfm:photo_book roles.role_5 set value "医生"
execute if score @s photo_target_5 matches 2 run data modify storage rfm:photo_book roles.role_5 set value "教师"
execute if score @s photo_target_5 matches 3 run data modify storage rfm:photo_book roles.role_5 set value "农民"
execute if score @s photo_target_5 matches 4 run data modify storage rfm:photo_book roles.role_5 set value "建筑工"
execute if score @s photo_target_5 matches 5 run data modify storage rfm:photo_book roles.role_5 set value "商人"
execute if score @s photo_target_5 matches 6 run data modify storage rfm:photo_book roles.role_5 set value "图书管理员"
execute if score @s photo_target_5 matches 7 run data modify storage rfm:photo_book roles.role_5 set value "渔民"
execute if score @s photo_target_5 matches 8 run data modify storage rfm:photo_book roles.role_5 set value "普通居民"

function rfm:task/action/fame/fame_3/give_book with storage rfm:photo_book roles

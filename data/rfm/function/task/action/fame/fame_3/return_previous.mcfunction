#目标站位原有居民回到各自候选位置；村民和交互实体会一起移动
execute if score @s photo_previous matches 1 run tp @e[tag=rfm_photo_resident_1] 580 -60 100
execute if score @s photo_previous matches 2 run tp @e[tag=rfm_photo_resident_2] 584 -60 100
execute if score @s photo_previous matches 3 run tp @e[tag=rfm_photo_resident_3] 588 -60 100
execute if score @s photo_previous matches 4 run tp @e[tag=rfm_photo_resident_4] 592 -60 100
execute if score @s photo_previous matches 5 run tp @e[tag=rfm_photo_resident_5] 580 -60 106
execute if score @s photo_previous matches 6 run tp @e[tag=rfm_photo_resident_6] 584 -60 106
execute if score @s photo_previous matches 7 run tp @e[tag=rfm_photo_resident_7] 588 -60 106
execute if score @s photo_previous matches 8 run tp @e[tag=rfm_photo_resident_8] 592 -60 106
scoreboard players set @s photo_previous 0

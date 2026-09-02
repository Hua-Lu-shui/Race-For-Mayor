scoreboard players remove @s hospital_time 1
execute store result bossbar rfm:hospital_time value run scoreboard players get @s hospital_time

scoreboard players set @s hospital_answer 0
execute if items block 123 -58 -66 container.* minecraft:written_book[minecraft:custom_data~{hospital_case:1}] run scoreboard players set @s hospital_answer 1
execute if items block 119 -58 -66 container.* minecraft:written_book[minecraft:custom_data~{hospital_case:1}] run scoreboard players set @s hospital_answer 2
execute if items block 115 -58 -66 container.* minecraft:written_book[minecraft:custom_data~{hospital_case:1}] run scoreboard players set @s hospital_answer 3

execute if score @s hospital_answer matches 1.. run function rfm:task/action/welfare/welfare_1/check
execute if score @s hospital_state matches 1 if score @s hospital_time matches ..0 run function rfm:task/action/welfare/welfare_1/result

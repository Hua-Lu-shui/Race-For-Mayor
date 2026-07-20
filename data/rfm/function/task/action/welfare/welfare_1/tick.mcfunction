#推进民生行动任务1的计时并检测三个分诊窗口
scoreboard players remove @s hospital_time 1
execute store result bossbar rfm:hospital_time value run scoreboard players get @s hospital_time

scoreboard players set @s hospital_answer 0
execute if items block 752 -60 103 container.* minecraft:written_book[minecraft:custom_data~{hospital_case:1}] run scoreboard players set @s hospital_answer 1
execute if items block 760 -60 103 container.* minecraft:written_book[minecraft:custom_data~{hospital_case:1}] run scoreboard players set @s hospital_answer 2
execute if items block 768 -60 103 container.* minecraft:written_book[minecraft:custom_data~{hospital_case:1}] run scoreboard players set @s hospital_answer 3

execute if score @s hospital_answer matches 1.. run function rfm:task/action/welfare/welfare_1/check
execute if score @s hospital_state matches 1 if score @s hospital_time matches ..0 run function rfm:task/action/welfare/welfare_1/result

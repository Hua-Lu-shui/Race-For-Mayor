#当前函数以正在结算的候选人为@s
scoreboard players set #room_found settle_value 1
tag @a[tag=rfm_participant] remove rfm_settling
tag @s add rfm_settling
title @a[tag=rfm_participant] times 0 35 0
title @a[tag=rfm_participant] subtitle {"selector":"@s"}
tellraw @a[tag=rfm_participant] [{"text":"开始统计候选人 ","color":"gray"},{"selector":"@s","color":"white","bold":true},{"text":" 的票数。","color":"gray"}]
execute as @a[tag=rfm_participant] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 0.9
#按大厅设置选择正常累加动画或直接展示四项最终票数
execute if score #count_animation game_setting matches 1 run function rfm:ending/count/start_all
execute if score #count_animation game_setting matches 0 run function rfm:ending/count/show_final

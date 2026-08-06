#目标记者持续发光并产生明显粒子
execute if score @s qa_target matches 1 run effect give @e[type=minecraft:villager,tag=rfm_qa_north,limit=1] minecraft:glowing 1 0 true
execute if score @s qa_target matches 1 run particle minecraft:electric_spark 204 -58.5 -26 0.45 0.55 0.45 0.05 12 force @a
execute if score @s qa_target matches 2 run effect give @e[type=minecraft:villager,tag=rfm_qa_east,limit=1] minecraft:glowing 1 0 true
execute if score @s qa_target matches 2 run particle minecraft:electric_spark 209 -58.5 -21 0.45 0.55 0.45 0.05 12 force @a
execute if score @s qa_target matches 3 run effect give @e[type=minecraft:villager,tag=rfm_qa_south,limit=1] minecraft:glowing 1 0 true
execute if score @s qa_target matches 3 run particle minecraft:electric_spark 204 -58.5 -16 0.45 0.55 0.45 0.05 12 force @a
execute if score @s qa_target matches 4 run effect give @e[type=minecraft:villager,tag=rfm_qa_west,limit=1] minecraft:glowing 1 0 true
execute if score @s qa_target matches 4 run particle minecraft:electric_spark 199 -58.6 -21 0.45 0.55 0.45 0.05 12 force @a

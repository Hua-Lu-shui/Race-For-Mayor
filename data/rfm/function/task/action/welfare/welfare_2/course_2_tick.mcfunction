#路线2检查点和射箭目标
execute if score @s fitness_checkpoint matches 0 positioned 814 -60 116 if entity @s[distance=..2] run function rfm:task/action/welfare/welfare_2/checkpoint_1
execute if score @s fitness_checkpoint matches 1 positioned 830 -59 116 if entity @s[distance=..1.6] run function rfm:task/action/welfare/welfare_2/checkpoint_2
execute if score @s fitness_checkpoint matches 2 positioned 838 -54 116 if entity @s[distance=..3] run function rfm:task/action/welfare/welfare_2/checkpoint_3
execute if score @s fitness_checkpoint matches 3 if score @s fitness_target_1 matches 0 unless block 852 -51 113 minecraft:target[power=0] run function rfm:task/action/welfare/welfare_2/target_1
execute if score @s fitness_checkpoint matches 3 if score @s fitness_target_2 matches 0 unless block 852 -52 116 minecraft:target[power=0] run function rfm:task/action/welfare/welfare_2/target_2
execute if score @s fitness_checkpoint matches 3 if score @s fitness_target_3 matches 0 unless block 852 -50 120 minecraft:target[power=0] run function rfm:task/action/welfare/welfare_2/target_3
execute if score @s fitness_checkpoint matches 4 positioned 864 -60 116 if entity @s[distance=..2.5] run function rfm:task/action/welfare/welfare_2/checkpoint_5

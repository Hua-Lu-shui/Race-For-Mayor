#找出尚未排名玩家中的最高分
scoreboard players set #best group_score -2147483648
tag @a remove rfm_collective_best
execute as @a[scores={group_rank=0}] if score @s group_score > #best group_score run scoreboard players operation #best group_score = @s group_score
execute as @a[scores={group_rank=0}] if score @s group_score = #best group_score run tag @s add rfm_collective_best

#同分玩家随机决定先后，确保每名玩家获得唯一名次
scoreboard players add #rank group_rank 1
execute as @a[tag=rfm_collective_best,sort=random,limit=1] run scoreboard players operation @s group_rank = #rank group_rank
execute if entity @a[scores={group_rank=0}] run return run function rfm:collective/rank_next
function rfm:collective/show_ranking

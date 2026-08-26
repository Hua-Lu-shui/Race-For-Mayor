#找出尚未排名玩家中的最高分
scoreboard players set #best group_score -2147483648
tag @a[tag=rfm_participant] remove rfm_collective_best
scoreboard players operation #best group_score > @a[tag=rfm_participant,scores={group_rank=0}] group_score
execute as @a[tag=rfm_participant,scores={group_rank=0}] if score @s group_score = #best group_score run tag @s add rfm_collective_best

#同分玩家随机决定先后，确保每名玩家获得唯一名次
scoreboard players add #rank group_rank 1
execute as @a[tag=rfm_participant,tag=rfm_collective_best,sort=random,limit=1] run scoreboard players operation @s group_rank = #rank group_rank
execute if entity @a[tag=rfm_participant,scores={group_rank=0}] run return run function rfm:collective/rank_next
#第一名确定后结算冠军奖杯，再公布排名并开始令牌选择
execute as @a[tag=rfm_participant,scores={group_rank=1}] run function rfm:collection/effect/champion_trophy
function rfm:collective/show_ranking

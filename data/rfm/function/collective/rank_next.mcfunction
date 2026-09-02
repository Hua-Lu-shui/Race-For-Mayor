scoreboard players set #best group_score -2147483648
tag @a[tag=rfm_participant] remove rfm_collective_best
scoreboard players operation #best group_score > @a[tag=rfm_participant,scores={group_rank=0}] group_score
execute as @a[tag=rfm_participant,scores={group_rank=0}] if score @s group_score = #best group_score run tag @s add rfm_collective_best

scoreboard players add #rank group_rank 1
execute as @a[tag=rfm_participant,tag=rfm_collective_best,sort=random,limit=1] run scoreboard players operation @s group_rank = #rank group_rank
execute if entity @a[tag=rfm_participant,scores={group_rank=0}] run return run function rfm:collective/rank_next
execute as @a[tag=rfm_participant,scores={group_rank=1}] run function rfm:collection/effect/champion_trophy
function rfm:collective/show_ranking

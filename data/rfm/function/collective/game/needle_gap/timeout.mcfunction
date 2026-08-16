effect clear @a[scores={group_finished=0}] minecraft:levitation
scoreboard players set @a[scores={group_finished=0}] group_score 0
tellraw @a {"text":"见缝插针时间到，未完成玩家将排在已完成玩家之后。","color":"yellow"}
function rfm:collective/finish

#超时未抽签玩家统一记0分，并在统一排名阶段随机决定这些末位玩家的先后
scoreboard players set @a[scores={group_finished=0}] group_score 0
tellraw @a {"text":"命中注定抽签时间到，未抽签玩家将排在已抽签玩家之后。","color":"yellow"}
function rfm:collective/finish

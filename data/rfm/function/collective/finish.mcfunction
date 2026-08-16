#令牌争夺结束，按照总分从高到低生成唯一排名
scoreboard players set #group_state group_state 0
execute if score #selected_game group_game matches 1 run function rfm:collective/game/swimming_race/cleanup
scoreboard players set @a group_rank 0
scoreboard players set #rank group_rank 0
title @a title {"text":"令牌争夺结束","color":"gold","bold":true}
title @a subtitle {"text":"正在统计排名……","color":"yellow"}
#先生成选择区域并将全员送入等待屋，再统计并公布进入顺序
function rfm:item/select/create_room
gamemode adventure @a
tp @a 56 -59 -55 0 0
function rfm:collective/rank_next

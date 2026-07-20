#集体行动结束，按照总分从高到低生成唯一排名
scoreboard players set #group_state group_state 0
scoreboard players set @a group_rank 0
scoreboard players set #rank group_rank 0
title @a title {"text":"集体行动结束","color":"gold","bold":true}
title @a subtitle {"text":"正在统计排名……","color":"yellow"}
function rfm:collective/rank_next

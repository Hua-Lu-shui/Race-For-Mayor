#事件06：经济结构震荡（经济权重+4）
scoreboard players set #event_6 event_used 1
scoreboard players add #weight economy_weight 4
title @a times 10 80 20
title @a title {"text":"经济结构震荡","color":"yellow","bold":true}
title @a subtitle [{"text":"经济权重 ","color":"gray"},{"text":"+4","color":"yellow","bold":true}]
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"传统产业订单骤减，新兴行业尚未站稳脚跟，稳定就业与恢复增长成为全城最紧迫的问题。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"经济权重提高4点；当前经济权重为 ","color":"white"},{"score":{"name":"#weight","objective":"economy_weight"},"color":"yellow","bold":true},{"text":"。","color":"white"}]

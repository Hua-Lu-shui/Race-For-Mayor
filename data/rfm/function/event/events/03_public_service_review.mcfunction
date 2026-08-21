#事件03：公共服务评议（民生权重+1）
scoreboard players set #event_3 event_used 1
scoreboard players add #weight welfare_weight 1
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"text":"公共服务评议","color":"red","bold":true}
title @a[tag=rfm_participant] subtitle [{"text":"民生权重 ","color":"gray"},{"text":"+1","color":"red","bold":true}]
tellraw @a[tag=rfm_participant] {"text":"【事件】公共服务评议","color":"red","bold":true}
tellraw @a[tag=rfm_participant] [{"text":"【事件背景】","color":"gold","bold":true},{"text":"全市开展公共服务满意度评议，医疗、交通、教育与社区保障成为选民最关心的话题。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"民生权重提高1点；当前民生权重为 ","color":"white"},{"score":{"name":"#weight","objective":"welfare_weight"},"color":"red","bold":true},{"text":"。","color":"white"}]

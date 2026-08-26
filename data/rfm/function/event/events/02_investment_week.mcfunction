#事件02：产业招商周（经济权重+1）
scoreboard players set #event_2 event_used 1
scoreboard players add #weight economy_weight 1
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.ed4fe8596078","color":"yellow","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.64c4e3d9efad","color":"gray"},{"text":"+1","color":"yellow","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.a5a30378707d","color":"yellow","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.64bb4f4741d9","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.1d00f0a2a6cb","color":"white"},{"score":{"name":"#weight","objective":"economy_weight"},"color":"yellow","bold":true},{"text":"。","color":"white"}]

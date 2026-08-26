#事件03：公共服务评议（民生权重+1）
scoreboard players set #event_3 event_used 1
scoreboard players add #weight welfare_weight 1
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.a340c258a004","color":"red","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.5acecea58658","color":"gray"},{"text":"+1","color":"red","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.18314fc5b987","color":"red","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.730ae60c836e","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.810eaededf6e","color":"white"},{"score":{"name":"#weight","objective":"welfare_weight"},"color":"red","bold":true},{"text":"。","color":"white"}]

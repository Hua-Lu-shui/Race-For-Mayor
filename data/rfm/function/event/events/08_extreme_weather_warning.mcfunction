#事件08：极端气候预警（生态权重+2）
scoreboard players set #event_8 event_used 1
scoreboard players add #weight ecology_weight 2
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.86afc69a610b","color":"green","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.e6ba8104beaf","color":"gray"},{"text":"+2","color":"green","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.492294a9f2b7","color":"green","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.84fcc2f312cb","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.5ce8407af4cd","color":"white"},{"score":{"name":"#weight","objective":"ecology_weight"},"color":"green","bold":true},{"text":"。","color":"white"}]

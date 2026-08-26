#事件05：全城信任危机（名誉权重+2）
scoreboard players set #event_5 event_used 1
scoreboard players add #weight fame_weight 2
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.2b2e72d73adf","color":"aqua","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.69212d799cea","color":"gray"},{"text":"+2","color":"aqua","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.406faec60f0d","color":"aqua","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.907741f708a5","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.0647997f1c8d","color":"white"},{"score":{"name":"#weight","objective":"fame_weight"},"color":"aqua","bold":true},{"text":"。","color":"white"}]

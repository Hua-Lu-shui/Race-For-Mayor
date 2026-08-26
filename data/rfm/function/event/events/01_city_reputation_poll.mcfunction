#事件01：城市口碑调查（名誉权重+1）
scoreboard players set #event_1 event_used 1
scoreboard players add #weight fame_weight 1
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.8582e3bfa05d","color":"aqua","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.69212d799cea","color":"gray"},{"text":"+1","color":"aqua","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.62028ce6aa75","color":"aqua","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.647a45581662","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.ed6d91991e08","color":"white"},{"score":{"name":"#weight","objective":"fame_weight"},"color":"aqua","bold":true},{"text":"。","color":"white"}]

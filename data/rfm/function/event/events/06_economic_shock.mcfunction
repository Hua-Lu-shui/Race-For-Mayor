#事件06：经济结构震荡（经济权重+2）
scoreboard players set #event_6 event_used 1
scoreboard players add #weight economy_weight 2
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.fe160101442d","color":"yellow","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.64c4e3d9efad","color":"gray"},{"text":"+2","color":"yellow","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.87a7b7243535","color":"yellow","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.77cbacd01c6c","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.d4e0ebb2c950","color":"white"},{"score":{"name":"#weight","objective":"economy_weight"},"color":"yellow","bold":true},{"text":"。","color":"white"}]

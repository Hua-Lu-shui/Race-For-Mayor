scoreboard players set #event_7 event_used 1
scoreboard players add #weight welfare_weight 2
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.25f2f7caa6ba","color":"red","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.5acecea58658","color":"gray"},{"text":"+2","color":"red","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.74067afdb917","color":"red","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.d71ac0205759","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.6adb8f557744","color":"white"},{"score":{"name":"#weight","objective":"welfare_weight"},"color":"red","bold":true},{"text":"。","color":"white"}]

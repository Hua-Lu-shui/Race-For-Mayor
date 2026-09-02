scoreboard players set #event_4 event_used 1
scoreboard players add #weight ecology_weight 1
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.7c9543c5966e","color":"green","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.e6ba8104beaf","color":"gray"},{"text":"+1","color":"green","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.ff21b3e4a230","color":"green","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.9f8e54ebd636","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.470679e8435a","color":"white"},{"score":{"name":"#weight","objective":"ecology_weight"},"color":"green","bold":true},{"text":"。","color":"white"}]

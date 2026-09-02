scoreboard players set #event_25 event_used 1
scoreboard players add @a[tag=rfm_participant,scores={candidate=8}] fame 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=8}] economy 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=8}] welfare 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=8}] ecology 3
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.14811d2ab332","color":"#012696","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.d98a9ecd48aa","color":"gray"},{"text":"+3","color":"green","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.6c65362dfdb9","color":"#012696","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.b9bc4108989a","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.eba4161da484","color":"white"},{"translate":"rfm.text.552caeb5bd54","color":"white"},{"translate":"rfm.text.7ec624a8adf1","color":"white"},{"translate":"rfm.text.dc04a5799df2","color":"aqua"},{"text":"、","color":"white"},{"translate":"rfm.text.cd0bf6887da7","color":"yellow"},{"text":"、","color":"white"},{"translate":"rfm.text.318edbd5be8f","color":"red"},{"text":"、","color":"white"},{"translate":"rfm.text.014a015ae588","color":"green"},{"translate":"rfm.text.eaee2398aa72","color":"white"}]

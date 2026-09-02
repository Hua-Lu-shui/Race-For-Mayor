scoreboard players set #event_11 event_used 1
scoreboard players add @a[tag=rfm_participant,scores={candidate=3}] fame 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=3}] economy 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=3}] welfare 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=3}] ecology 3
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.db6dfa79de67","color":"red","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.83564eddbffe","color":"gray"},{"text":"+3","color":"green","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.848730eb9b72","color":"red","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.7cdc8f5a3918","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.eba4161da484","color":"white"},{"translate":"rfm.text.a64d79f9cbf2","color":"white"},{"translate":"rfm.text.7ec624a8adf1","color":"white"},{"translate":"rfm.text.dc04a5799df2","color":"aqua"},{"text":"、","color":"white"},{"translate":"rfm.text.cd0bf6887da7","color":"yellow"},{"text":"、","color":"white"},{"translate":"rfm.text.318edbd5be8f","color":"red"},{"text":"、","color":"white"},{"translate":"rfm.text.014a015ae588","color":"green"},{"translate":"rfm.text.eaee2398aa72","color":"white"}]

#事件12：城市智库论坛（学者候选人所有属性+3）
scoreboard players set #event_12 event_used 1
scoreboard players add @a[tag=rfm_participant,scores={candidate=4}] fame 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=4}] economy 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=4}] welfare 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=4}] ecology 3
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.65c7a0b219f3","color":"green","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.4c19642c318e","color":"gray"},{"text":"+3","color":"green","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.94619d7cc695","color":"green","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.5bfaa58a34bc","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.eba4161da484","color":"white"},{"translate":"rfm.text.d283b25d4b3c","color":"white"},{"translate":"rfm.text.7ec624a8adf1","color":"white"},{"translate":"rfm.text.dc04a5799df2","color":"aqua"},{"text":"、","color":"white"},{"translate":"rfm.text.cd0bf6887da7","color":"yellow"},{"text":"、","color":"white"},{"translate":"rfm.text.318edbd5be8f","color":"red"},{"text":"、","color":"white"},{"translate":"rfm.text.014a015ae588","color":"green"},{"translate":"rfm.text.eaee2398aa72","color":"white"}]

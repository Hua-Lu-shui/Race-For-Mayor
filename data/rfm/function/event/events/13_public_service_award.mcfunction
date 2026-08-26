#事件13：政务服务表彰（公务员候选人所有属性+3）
scoreboard players set #event_13 event_used 1
scoreboard players add @a[tag=rfm_participant,scores={candidate=5}] fame 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=5}] economy 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=5}] welfare 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=5}] ecology 3
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.322cb9c17efe","color":"light_purple","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.e8ad4e68099f","color":"#F5F5DC"},{"text":"+3","color":"green","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.2e2a3dcecca6","color":"light_purple","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.63305fa249a4","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.eba4161da484","color":"white"},{"translate":"rfm.text.6d27f34521b6","color":"white"},{"translate":"rfm.text.7ec624a8adf1","color":"white"},{"translate":"rfm.text.dc04a5799df2","color":"aqua"},{"text":"、","color":"white"},{"translate":"rfm.text.cd0bf6887da7","color":"yellow"},{"text":"、","color":"white"},{"translate":"rfm.text.318edbd5be8f","color":"red"},{"text":"、","color":"white"},{"translate":"rfm.text.014a015ae588","color":"green"},{"translate":"rfm.text.eaee2398aa72","color":"white"}]

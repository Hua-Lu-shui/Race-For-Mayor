#事件09：全城文艺庆典（明星候选人所有属性+3）
scoreboard players set #event_9 event_used 1
scoreboard players add @a[tag=rfm_participant,scores={candidate=1}] fame 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=1}] economy 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=1}] welfare 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=1}] ecology 3
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.cec02e03b923","color":"aqua","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.f079e7ae02c1","color":"gray"},{"text":"+3","color":"green","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.f10de26cc9c7","color":"aqua","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.0b21d06dee64","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.eba4161da484","color":"white"},{"translate":"rfm.text.69ed896366d3","color":"white"},{"translate":"rfm.text.7ec624a8adf1","color":"white"},{"translate":"rfm.text.dc04a5799df2","color":"aqua"},{"text":"、","color":"white"},{"translate":"rfm.text.cd0bf6887da7","color":"yellow"},{"text":"、","color":"white"},{"translate":"rfm.text.318edbd5be8f","color":"red"},{"text":"、","color":"white"},{"translate":"rfm.text.014a015ae588","color":"green"},{"translate":"rfm.text.eaee2398aa72","color":"white"}]

#事件26：演练扰民争议（军人候选人所有属性-3）
scoreboard players set #event_26 event_used 1
scoreboard players remove @a[tag=rfm_participant,scores={candidate=6}] fame 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=6}] economy 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=6}] welfare 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=6}] ecology 3
execute as @a[tag=rfm_participant,scores={candidate=6}] run function rfm:attribute/minimum
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.75907155f013","color":"#FFA500","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.cc7edbfb515d","color":"gray"},{"text":"-3","color":"red","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.96d1a0aa9239","color":"#FFA500","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.27dcacf94c71","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.eba4161da484","color":"white"},{"translate":"rfm.text.ae87d8da0853","color":"white"},{"translate":"rfm.text.7ec624a8adf1","color":"white"},{"translate":"rfm.text.dc04a5799df2","color":"aqua"},{"text":"、","color":"white"},{"translate":"rfm.text.cd0bf6887da7","color":"yellow"},{"text":"、","color":"white"},{"translate":"rfm.text.318edbd5be8f","color":"red"},{"text":"、","color":"white"},{"translate":"rfm.text.014a015ae588","color":"green"},{"translate":"rfm.text.6554a880f5c6","color":"white"}]

#事件27：利益冲突争议（律师候选人所有属性-3）
scoreboard players set #event_27 event_used 1
scoreboard players remove @a[tag=rfm_participant,scores={candidate=7}] fame 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=7}] economy 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=7}] welfare 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=7}] ecology 3
execute as @a[tag=rfm_participant,scores={candidate=7}] run function rfm:attribute/minimum
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.39620f0efce7","color":"light_purple","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.c648a25366c9","color":"gray"},{"text":"-3","color":"red","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.03b052689b2a","color":"light_purple","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.a316c6fccc15","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.eba4161da484","color":"white"},{"translate":"rfm.text.786c0074d224","color":"white"},{"translate":"rfm.text.7ec624a8adf1","color":"white"},{"translate":"rfm.text.dc04a5799df2","color":"aqua"},{"text":"、","color":"white"},{"translate":"rfm.text.cd0bf6887da7","color":"yellow"},{"text":"、","color":"white"},{"translate":"rfm.text.318edbd5be8f","color":"red"},{"text":"、","color":"white"},{"translate":"rfm.text.014a015ae588","color":"green"},{"translate":"rfm.text.6554a880f5c6","color":"white"}]

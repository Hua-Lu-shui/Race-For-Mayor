scoreboard players set #event_14 event_used 1
scoreboard players remove @a[tag=rfm_participant,scores={candidate=1}] fame 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=1}] economy 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=1}] welfare 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=1}] ecology 3
execute as @a[tag=rfm_participant,scores={candidate=1}] run function rfm:attribute/minimum
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.2f4d70e78ca8","color":"aqua","bold":true}
title @a[tag=rfm_participant] subtitle [{"translate":"rfm.text.f079e7ae02c1","color":"gray"},{"text":"-3","color":"red","bold":true}]
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.bea25b942ddd","color":"aqua","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.323c861e3291","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.eba4161da484","color":"white"},{"translate":"rfm.text.69ed896366d3","color":"white"},{"translate":"rfm.text.7ec624a8adf1","color":"white"},{"translate":"rfm.text.dc04a5799df2","color":"aqua"},{"text":"、","color":"white"},{"translate":"rfm.text.cd0bf6887da7","color":"yellow"},{"text":"、","color":"white"},{"translate":"rfm.text.318edbd5be8f","color":"red"},{"text":"、","color":"white"},{"translate":"rfm.text.014a015ae588","color":"green"},{"translate":"rfm.text.6554a880f5c6","color":"white"}]

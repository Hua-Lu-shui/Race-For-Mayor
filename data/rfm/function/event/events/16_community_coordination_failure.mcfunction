#事件16：社区协调失误（社区领袖候选人所有属性-3）
scoreboard players set #event_16 event_used 1
scoreboard players remove @a[tag=rfm_participant,scores={candidate=3}] fame 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=3}] economy 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=3}] welfare 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=3}] ecology 3
execute as @a[tag=rfm_participant,scores={candidate=3}] run function rfm:attribute/minimum
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"text":"社区协调失误","color":"red","bold":true}
title @a[tag=rfm_participant] subtitle [{"text":"社区领袖候选人：所有属性 ","color":"gray"},{"text":"-3","color":"red","bold":true}]
tellraw @a[tag=rfm_participant] {"text":"【事件】社区协调失误","color":"red","bold":true}
tellraw @a[tag=rfm_participant] [{"text":"【事件背景】","color":"gold","bold":true},{"text":"一次街区改造协调会因沟通不足陷入混乱，社区领袖候选人的组织方式遭到居民批评。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有","color":"white"},{"text":"社区领袖","color":"white"},{"text":"候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均降低3点。","color":"white"}]

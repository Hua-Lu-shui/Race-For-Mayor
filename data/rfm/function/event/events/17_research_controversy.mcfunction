#事件17：研究成果质疑（学者候选人所有属性-3）
scoreboard players set #event_17 event_used 1
scoreboard players remove @a[tag=rfm_participant,scores={candidate=4}] fame 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=4}] economy 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=4}] welfare 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=4}] ecology 3
execute as @a[tag=rfm_participant,scores={candidate=4}] run function rfm:attribute/minimum
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"text":"研究成果质疑","color":"green","bold":true}
title @a[tag=rfm_participant] subtitle [{"text":"学者候选人：所有属性 ","color":"gray"},{"text":"-3","color":"red","bold":true}]
tellraw @a[tag=rfm_participant] {"text":"【事件】研究成果质疑","color":"green","bold":true}
tellraw @a[tag=rfm_participant] [{"text":"【事件背景】","color":"gold","bold":true},{"text":"一份重要研究报告被指出数据解释存在争议，学者候选人的专业权威和政策可行性受到挑战。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有","color":"white"},{"text":"学者","color":"white"},{"text":"候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均降低3点。","color":"white"}]

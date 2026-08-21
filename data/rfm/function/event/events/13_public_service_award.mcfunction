#事件13：政务服务表彰（公务员候选人所有属性+3）
scoreboard players set #event_13 event_used 1
scoreboard players add @a[tag=rfm_participant,scores={candidate=5}] fame 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=5}] economy 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=5}] welfare 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=5}] ecology 3
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"text":"政务服务表彰","color":"light_purple","bold":true}
title @a[tag=rfm_participant] subtitle [{"text":"公务员候选人：所有属性 ","color":"#F5F5DC"},{"text":"+3","color":"green","bold":true}]
tellraw @a[tag=rfm_participant] {"text":"【事件】政务服务表彰","color":"light_purple","bold":true}
tellraw @a[tag=rfm_participant] [{"text":"【事件背景】","color":"gold","bold":true},{"text":"年度政务服务评选结果公布，熟悉公共管理流程的公务员候选人因稳定高效的工作受到肯定。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有","color":"white"},{"text":"公务员","color":"white"},{"text":"候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均提高3点。","color":"white"}]

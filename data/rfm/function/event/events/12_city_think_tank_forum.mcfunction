#事件12：城市智库论坛（学者候选人所有属性+3）
scoreboard players set #event_12 event_used 1
scoreboard players add @a[tag=rfm_participant,scores={candidate=4}] fame 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=4}] economy 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=4}] welfare 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=4}] ecology 3
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"text":"城市智库论坛","color":"green","bold":true}
title @a[tag=rfm_participant] subtitle [{"text":"学者候选人：所有属性 ","color":"gray"},{"text":"+3","color":"green","bold":true}]
tellraw @a[tag=rfm_participant] {"text":"【事件】城市智库论坛","color":"green","bold":true}
tellraw @a[tag=rfm_participant] [{"text":"【事件背景】","color":"gold","bold":true},{"text":"城市智库公开讨论长期发展方案，善于研究与论证的学者候选人凭借专业建议赢得广泛认可。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有","color":"white"},{"text":"学者","color":"white"},{"text":"候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均提高3点。","color":"white"}]

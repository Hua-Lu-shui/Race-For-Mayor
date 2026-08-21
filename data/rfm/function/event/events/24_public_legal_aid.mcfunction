#事件24：公益法律援助（律师候选人所有属性+3）
scoreboard players set #event_24 event_used 1
scoreboard players add @a[tag=rfm_participant,scores={candidate=7}] fame 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=7}] economy 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=7}] welfare 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=7}] ecology 3
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"text":"公益法律援助","color":"light_purple","bold":true}
title @a[tag=rfm_participant] subtitle [{"text":"律师候选人：所有属性 ","color":"gray"},{"text":"+3","color":"green","bold":true}]
tellraw @a[tag=rfm_participant] {"text":"【事件】公益法律援助","color":"light_purple","bold":true}
tellraw @a[tag=rfm_participant] [{"text":"【事件背景】","color":"gold","bold":true},{"text":"全市公益法律援助活动为大量市民解决了实际困难，熟悉法规与权益保障的律师候选人赢得广泛信任。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有","color":"white"},{"text":"律师","color":"white"},{"text":"候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均提高3点。","color":"white"}]

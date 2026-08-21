#事件25：社区义诊行动（医生候选人所有属性+3）
scoreboard players set #event_25 event_used 1
scoreboard players add @a[tag=rfm_participant,scores={candidate=8}] fame 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=8}] economy 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=8}] welfare 3
scoreboard players add @a[tag=rfm_participant,scores={candidate=8}] ecology 3
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"text":"社区义诊行动","color":"#012696","bold":true}
title @a[tag=rfm_participant] subtitle [{"text":"医生候选人：所有属性 ","color":"gray"},{"text":"+3","color":"green","bold":true}]
tellraw @a[tag=rfm_participant] {"text":"【事件】社区义诊行动","color":"#012696","bold":true}
tellraw @a[tag=rfm_participant] [{"text":"【事件背景】","color":"gold","bold":true},{"text":"社区义诊为居民提供了及时的健康咨询与筛查，重视公共健康的医生候选人因专业和耐心获得市民认可。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有","color":"white"},{"text":"医生","color":"white"},{"text":"候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均提高3点。","color":"white"}]

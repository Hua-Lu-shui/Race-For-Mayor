#事件25：社区义诊行动（医生候选人全部属性+2）
scoreboard players set #event_25 event_used 1
scoreboard players add @a[scores={candidate=8}] fame 2
scoreboard players add @a[scores={candidate=8}] economy 2
scoreboard players add @a[scores={candidate=8}] welfare 2
scoreboard players add @a[scores={candidate=8}] ecology 2
title @a times 10 80 20
title @a title {"text":"社区义诊行动","color":"#012696","bold":true}
title @a subtitle [{"text":"医生候选人：全部属性 ","color":"gray"},{"text":"+2","color":"green","bold":true}]
tellraw @a {"text":"【事件】社区义诊行动","color":"#012696","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"社区义诊为居民提供了及时的健康咨询与筛查，重视公共健康的医生候选人因专业和耐心获得市民认可。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有医生候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均提高2点。","color":"white"}]

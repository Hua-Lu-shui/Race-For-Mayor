#事件16：社区协调失误（社区领袖候选人全部属性-2）
scoreboard players set #event_16 event_used 1
scoreboard players remove @a[scores={candidate=3}] fame 2
scoreboard players remove @a[scores={candidate=3}] economy 2
scoreboard players remove @a[scores={candidate=3}] welfare 2
scoreboard players remove @a[scores={candidate=3}] ecology 2
execute as @a[scores={candidate=3}] run function rfm:attribute/minimum
title @a times 10 80 20
title @a title {"text":"社区协调失误","color":"red","bold":true}
title @a subtitle [{"text":"社区领袖候选人：全部属性 ","color":"gray"},{"text":"-2","color":"red","bold":true}]
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"一次街区改造协调会因沟通不足陷入混乱，社区领袖候选人的组织方式遭到居民批评。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有社区领袖候选人的名誉、经济、民生、生态均降低2点。","color":"white"}]

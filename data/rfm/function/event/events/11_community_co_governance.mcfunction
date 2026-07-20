#事件11：社区共治行动（社区领袖候选人全部属性+2）
scoreboard players set #event_11 event_used 1
scoreboard players add @a[scores={candidate=3}] fame 2
scoreboard players add @a[scores={candidate=3}] economy 2
scoreboard players add @a[scores={candidate=3}] welfare 2
scoreboard players add @a[scores={candidate=3}] ecology 2
title @a times 10 80 20
title @a title {"text":"社区共治行动","color":"red","bold":true}
title @a subtitle [{"text":"社区领袖候选人：全部属性 ","color":"gray"},{"text":"+2","color":"green","bold":true}]
tellraw @a {"text":"【城市事件】社区共治行动","color":"red","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"多个街区联合开展社区共治行动，长期扎根基层的社区领袖候选人迅速组织居民解决实际问题。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有社区领袖候选人的名誉、经济、民生、生态均提高2点。","color":"white"}]

#事件11：社区共治行动（社区领袖候选人所有属性+3）
scoreboard players set #event_11 event_used 1
scoreboard players add @a[scores={candidate=3}] fame 3
scoreboard players add @a[scores={candidate=3}] economy 3
scoreboard players add @a[scores={candidate=3}] welfare 3
scoreboard players add @a[scores={candidate=3}] ecology 3
title @a times 10 80 20
title @a title {"text":"社区共治行动","color":"red","bold":true}
title @a subtitle [{"text":"社区领袖候选人：所有属性 ","color":"gray"},{"text":"+3","color":"green","bold":true}]
tellraw @a {"text":"【事件】社区共治行动","color":"red","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"多个街区联合开展社区共治行动，长期扎根基层的社区领袖候选人迅速组织居民解决实际问题。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有","color":"white"},{"text":"社区领袖","color":"red"},{"text":"候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均提高3点。","color":"white"}]

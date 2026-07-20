#事件13：政务服务表彰（公务员候选人全部属性+2）
scoreboard players set #event_13 event_used 1
scoreboard players add @a[scores={candidate=5}] fame 2
scoreboard players add @a[scores={candidate=5}] economy 2
scoreboard players add @a[scores={candidate=5}] welfare 2
scoreboard players add @a[scores={candidate=5}] ecology 2
title @a times 10 80 20
title @a title {"text":"政务服务表彰","color":"light_purple","bold":true}
title @a subtitle [{"text":"公务员候选人：全部属性 ","color":"gray"},{"text":"+2","color":"green","bold":true}]
tellraw @a {"text":"【城市事件】政务服务表彰","color":"light_purple","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"年度政务服务评选结果公布，熟悉公共管理流程的公务员候选人因稳定高效的工作受到肯定。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有公务员候选人的名誉、经济、民生、生态均提高2点。","color":"white"}]

#事件17：研究成果质疑（学者候选人全部属性-2）
scoreboard players set #event_17 event_used 1
scoreboard players remove @a[scores={candidate=4}] fame 2
scoreboard players remove @a[scores={candidate=4}] economy 2
scoreboard players remove @a[scores={candidate=4}] welfare 2
scoreboard players remove @a[scores={candidate=4}] ecology 2
execute as @a[scores={candidate=4}] run function rfm:attribute/minimum
title @a times 10 80 20
title @a title {"text":"研究成果质疑","color":"green","bold":true}
title @a subtitle [{"text":"学者候选人：全部属性 ","color":"gray"},{"text":"-2","color":"red","bold":true}]
tellraw @a {"text":"【城市事件】研究成果质疑","color":"green","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"一份重要研究报告被指出数据解释存在争议，学者候选人的专业权威和政策可行性受到挑战。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有学者候选人的名誉、经济、民生、生态均降低2点。","color":"white"}]

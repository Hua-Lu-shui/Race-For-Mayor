#事件10：城市商业峰会（企业家候选人全部属性+2）
scoreboard players set #event_10 event_used 1
scoreboard players add @a[scores={candidate=2}] fame 2
scoreboard players add @a[scores={candidate=2}] economy 2
scoreboard players add @a[scores={candidate=2}] welfare 2
scoreboard players add @a[scores={candidate=2}] ecology 2
title @a times 10 80 20
title @a title {"text":"城市商业峰会","color":"yellow","bold":true}
title @a subtitle [{"text":"企业家候选人：全部属性 ","color":"gray"},{"text":"+2","color":"green","bold":true}]
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"城市商业峰会汇集投资机构与本地企业，熟悉市场运作的企业家候选人提出了多项务实合作方案。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有企业家候选人的名誉、经济、民生、生态均提高2点。","color":"white"}]

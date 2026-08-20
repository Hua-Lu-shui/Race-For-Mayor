#事件10：城市商业峰会（企业家候选人所有属性+3）
scoreboard players set #event_10 event_used 1
scoreboard players add @a[scores={candidate=2}] fame 3
scoreboard players add @a[scores={candidate=2}] economy 3
scoreboard players add @a[scores={candidate=2}] welfare 3
scoreboard players add @a[scores={candidate=2}] ecology 3
title @a times 10 80 20
title @a title {"text":"城市商业峰会","color":"yellow","bold":true}
title @a subtitle [{"text":"企业家候选人：所有属性 ","color":"gray"},{"text":"+3","color":"green","bold":true}]
tellraw @a {"text":"【事件】城市商业峰会","color":"yellow","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"城市商业峰会汇集投资机构与本地企业，熟悉市场运作的企业家候选人提出了多项务实合作方案。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有企业家候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均提高3点。","color":"white"}]

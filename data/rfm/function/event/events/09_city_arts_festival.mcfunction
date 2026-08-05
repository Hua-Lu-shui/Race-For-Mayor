#事件09：全城文艺庆典（明星候选人全部属性+2）
scoreboard players set #event_9 event_used 1
scoreboard players add @a[scores={candidate=1}] fame 2
scoreboard players add @a[scores={candidate=1}] economy 2
scoreboard players add @a[scores={candidate=1}] welfare 2
scoreboard players add @a[scores={candidate=1}] ecology 2
title @a times 10 80 20
title @a title {"text":"全城文艺庆典","color":"aqua","bold":true}
title @a subtitle [{"text":"明星候选人：全部属性 ","color":"gray"},{"text":"+2","color":"green","bold":true}]
tellraw @a {"text":"【事件】全城文艺庆典","color":"aqua","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"全城文艺庆典吸引大量市民参与，熟悉舞台与公众表达的明星候选人成为活动焦点。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有明星候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均提高2点。","color":"white"}]

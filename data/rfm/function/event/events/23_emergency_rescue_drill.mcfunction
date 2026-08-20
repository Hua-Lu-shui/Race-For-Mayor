#事件23：应急救援演练（军人候选人所有属性+3）
scoreboard players set #event_23 event_used 1
scoreboard players add @a[scores={candidate=6}] fame 3
scoreboard players add @a[scores={candidate=6}] economy 3
scoreboard players add @a[scores={candidate=6}] welfare 3
scoreboard players add @a[scores={candidate=6}] ecology 3
title @a times 10 80 20
title @a title {"text":"应急救援演练","color":"#FFA500","bold":true}
title @a subtitle [{"text":"军人候选人：所有属性 ","color":"gray"},{"text":"+3","color":"green","bold":true}]
tellraw @a {"text":"【事件】应急救援演练","color":"#FFA500","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"全市开展跨部门应急救援演练，纪律严明、善于统筹现场的军人候选人在复杂状况中展现出可靠的组织能力。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有军人候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均提高3点。","color":"white"}]

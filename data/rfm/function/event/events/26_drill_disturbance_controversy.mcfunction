#事件26：演练扰民争议（军人候选人所有属性-3）
scoreboard players set #event_26 event_used 1
scoreboard players remove @a[scores={candidate=6}] fame 3
scoreboard players remove @a[scores={candidate=6}] economy 3
scoreboard players remove @a[scores={candidate=6}] welfare 3
scoreboard players remove @a[scores={candidate=6}] ecology 3
execute as @a[scores={candidate=6}] run function rfm:attribute/minimum
title @a times 10 80 20
title @a title {"text":"演练扰民争议","color":"#FFA500","bold":true}
title @a subtitle [{"text":"军人候选人：所有属性 ","color":"gray"},{"text":"-3","color":"red","bold":true}]
tellraw @a {"text":"【事件】演练扰民争议","color":"#FFA500","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"一次大型应急演练因通知不足影响了周边交通与居民生活，军人候选人的执行方式和沟通能力受到质疑。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有","color":"white"},{"text":"军人","color":"white"},{"text":"候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均降低3点。","color":"white"}]

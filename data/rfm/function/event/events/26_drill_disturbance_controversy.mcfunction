#事件26：演练扰民争议（军人候选人全部属性-2）
scoreboard players set #event_26 event_used 1
scoreboard players remove @a[scores={candidate=6}] fame 2
scoreboard players remove @a[scores={candidate=6}] economy 2
scoreboard players remove @a[scores={candidate=6}] welfare 2
scoreboard players remove @a[scores={candidate=6}] ecology 2
execute as @a[scores={candidate=6}] run function rfm:attribute/minimum
title @a times 10 80 20
title @a title {"text":"演练扰民争议","color":"#FFA500","bold":true}
title @a subtitle [{"text":"军人候选人：全部属性 ","color":"gray"},{"text":"-2","color":"red","bold":true}]
tellraw @a {"text":"【事件】演练扰民争议","color":"#FFA500","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"一次大型应急演练因通知不足影响了周边交通与居民生活，军人候选人的执行方式和沟通能力受到质疑。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有军人候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均降低2点。","color":"white"}]

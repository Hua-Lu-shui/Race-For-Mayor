#事件27：利益冲突争议（律师候选人全部属性-2）
scoreboard players set #event_27 event_used 1
scoreboard players remove @a[scores={candidate=7}] fame 2
scoreboard players remove @a[scores={candidate=7}] economy 2
scoreboard players remove @a[scores={candidate=7}] welfare 2
scoreboard players remove @a[scores={candidate=7}] ecology 2
execute as @a[scores={candidate=7}] run function rfm:attribute/minimum
title @a times 10 80 20
title @a title {"text":"利益冲突争议","color":"light_purple","bold":true}
title @a subtitle [{"text":"律师候选人：全部属性 ","color":"gray"},{"text":"-2","color":"red","bold":true}]
tellraw @a {"text":"【事件】利益冲突争议","color":"light_purple","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"一项公共事务被质疑存在代理关系上的利益冲突，律师候选人的职业判断与信息披露遭到舆论审视。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有律师候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均降低2点。","color":"white"}]

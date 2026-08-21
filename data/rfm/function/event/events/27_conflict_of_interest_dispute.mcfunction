#事件27：利益冲突争议（律师候选人所有属性-3）
scoreboard players set #event_27 event_used 1
scoreboard players remove @a[tag=rfm_participant,scores={candidate=7}] fame 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=7}] economy 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=7}] welfare 3
scoreboard players remove @a[tag=rfm_participant,scores={candidate=7}] ecology 3
execute as @a[tag=rfm_participant,scores={candidate=7}] run function rfm:attribute/minimum
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"text":"利益冲突争议","color":"light_purple","bold":true}
title @a[tag=rfm_participant] subtitle [{"text":"律师候选人：所有属性 ","color":"gray"},{"text":"-3","color":"red","bold":true}]
tellraw @a[tag=rfm_participant] {"text":"【事件】利益冲突争议","color":"light_purple","bold":true}
tellraw @a[tag=rfm_participant] [{"text":"【事件背景】","color":"gold","bold":true},{"text":"一项公共事务被质疑存在代理关系上的利益冲突，律师候选人的职业判断与信息披露遭到舆论审视。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有","color":"white"},{"text":"律师","color":"white"},{"text":"候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均降低3点。","color":"white"}]

#事件18：行政流程问责（公务员候选人全部属性-2）
scoreboard players set #event_18 event_used 1
scoreboard players remove @a[scores={candidate=5}] fame 2
scoreboard players remove @a[scores={candidate=5}] economy 2
scoreboard players remove @a[scores={candidate=5}] welfare 2
scoreboard players remove @a[scores={candidate=5}] ecology 2
execute as @a[scores={candidate=5}] run function rfm:attribute/minimum
title @a times 10 80 20
title @a title {"text":"行政流程问责","color":"light_purple","bold":true}
title @a subtitle [{"text":"公务员候选人：全部属性 ","color":"#F5F5DC"},{"text":"-2","color":"red","bold":true}]
tellraw @a {"text":"【事件】行政流程问责","color":"light_purple","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"一项民生项目因层层审批而延误，公务员候选人被要求解释行政效率和部门协调问题。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有公务员候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均降低2点。","color":"white"}]

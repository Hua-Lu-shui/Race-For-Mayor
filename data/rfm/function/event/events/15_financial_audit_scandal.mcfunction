#事件15：财务审查风波（企业家候选人所有属性-3）
scoreboard players set #event_15 event_used 1
scoreboard players remove @a[scores={candidate=2}] fame 3
scoreboard players remove @a[scores={candidate=2}] economy 3
scoreboard players remove @a[scores={candidate=2}] welfare 3
scoreboard players remove @a[scores={candidate=2}] ecology 3
execute as @a[scores={candidate=2}] run function rfm:attribute/minimum
title @a times 10 80 20
title @a title {"text":"财务审查风波","color":"yellow","bold":true}
title @a subtitle [{"text":"企业家候选人：所有属性 ","color":"gray"},{"text":"-3","color":"red","bold":true}]
tellraw @a {"text":"【事件】财务审查风波","color":"yellow","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"审查机构发现部分企业账目说明不清，企业家候选人的经营能力与利益边界因此受到舆论追问。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有","color":"white"},{"text":"企业家","color":"white"},{"text":"候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均降低3点。","color":"white"}]

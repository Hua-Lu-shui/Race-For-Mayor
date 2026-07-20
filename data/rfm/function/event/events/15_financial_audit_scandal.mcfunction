#事件15：财务审查风波（企业家候选人全部属性-2）
scoreboard players set #event_15 event_used 1
scoreboard players remove @a[scores={candidate=2}] fame 2
scoreboard players remove @a[scores={candidate=2}] economy 2
scoreboard players remove @a[scores={candidate=2}] welfare 2
scoreboard players remove @a[scores={candidate=2}] ecology 2
execute as @a[scores={candidate=2}] run function rfm:attribute/minimum
title @a times 10 80 20
title @a title {"text":"财务审查风波","color":"yellow","bold":true}
title @a subtitle [{"text":"企业家候选人：全部属性 ","color":"gray"},{"text":"-2","color":"red","bold":true}]
tellraw @a {"text":"【城市事件】财务审查风波","color":"yellow","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"审查机构发现部分企业账目说明不清，企业家候选人的经营能力与利益边界因此受到舆论追问。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有企业家候选人的名誉、经济、民生、生态均降低2点。","color":"white"}]

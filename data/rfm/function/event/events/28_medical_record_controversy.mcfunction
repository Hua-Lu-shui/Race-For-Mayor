#事件28：诊疗记录争议（医生候选人所有属性-3）
scoreboard players set #event_28 event_used 1
scoreboard players remove @a[scores={candidate=8}] fame 3
scoreboard players remove @a[scores={candidate=8}] economy 3
scoreboard players remove @a[scores={candidate=8}] welfare 3
scoreboard players remove @a[scores={candidate=8}] ecology 3
execute as @a[scores={candidate=8}] run function rfm:attribute/minimum
title @a times 10 80 20
title @a title {"text":"诊疗记录争议","color":"#012696","bold":true}
title @a subtitle [{"text":"医生候选人：所有属性 ","color":"gray"},{"text":"-3","color":"red","bold":true}]
tellraw @a {"text":"【事件】诊疗记录争议","color":"#012696","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"一批诊疗记录被发现管理不规范，引发市民对隐私保护和医疗流程的担忧，医生候选人面临专业责任质疑。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有医生候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均降低3点。","color":"white"}]

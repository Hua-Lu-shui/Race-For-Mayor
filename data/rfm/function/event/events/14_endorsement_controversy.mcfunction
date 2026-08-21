#事件14：代言争议（明星候选人所有属性-3）
scoreboard players set #event_14 event_used 1
scoreboard players remove @a[scores={candidate=1}] fame 3
scoreboard players remove @a[scores={candidate=1}] economy 3
scoreboard players remove @a[scores={candidate=1}] welfare 3
scoreboard players remove @a[scores={candidate=1}] ecology 3
execute as @a[scores={candidate=1}] run function rfm:attribute/minimum
title @a times 10 80 20
title @a title {"text":"代言争议","color":"aqua","bold":true}
title @a subtitle [{"text":"明星候选人：所有属性 ","color":"gray"},{"text":"-3","color":"red","bold":true}]
tellraw @a {"text":"【事件】代言争议","color":"aqua","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"一项旧日商业代言被曝出宣传失实，明星候选人的公众判断力与社会责任感遭到集中质疑。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有","color":"white"},{"text":"明星","color":"aqua"},{"text":"候选人的","color":"white"},{"text":"名誉","color":"aqua"},{"text":"、","color":"white"},{"text":"经济","color":"yellow"},{"text":"、","color":"white"},{"text":"民生","color":"red"},{"text":"、","color":"white"},{"text":"生态","color":"green"},{"text":"均降低3点。","color":"white"}]

#事件14：代言争议（明星候选人全部属性-2）
scoreboard players set #event_14 event_used 1
scoreboard players remove @a[scores={candidate=1}] fame 2
scoreboard players remove @a[scores={candidate=1}] economy 2
scoreboard players remove @a[scores={candidate=1}] welfare 2
scoreboard players remove @a[scores={candidate=1}] ecology 2
execute as @a[scores={candidate=1}] run function rfm:attribute/minimum
title @a times 10 80 20
title @a title {"text":"代言争议","color":"aqua","bold":true}
title @a subtitle [{"text":"明星候选人：全部属性 ","color":"gray"},{"text":"-2","color":"red","bold":true}]
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"一项旧日商业代言被曝出宣传失实，明星候选人的公众判断力与社会责任感遭到集中质疑。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"所有明星候选人的名誉、经济、民生、生态均降低2点。","color":"white"}]

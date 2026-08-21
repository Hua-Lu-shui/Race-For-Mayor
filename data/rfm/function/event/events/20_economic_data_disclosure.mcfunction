#事件20：经济数据公开（永久显示经济领先者）
scoreboard players set #event_20 event_used 1
scoreboard players set #reveal_economy leader_reveal 1
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"text":"经济数据公开","color":"yellow","bold":true}
title @a[tag=rfm_participant] subtitle {"text":"经济领先者将永久公开","color":"white","bold":true}
tellraw @a[tag=rfm_participant] {"text":"【事件】经济数据公开","color":"yellow","bold":true}
tellraw @a[tag=rfm_participant] [{"text":"【事件背景】","color":"gold","bold":true},{"text":"城市财政与产业评估平台向公众开放，候选人的经济治理表现开始接受持续监督。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"从本轮属性公示起，本局剩余时间将永久显示经济领先者。","color":"white"}]

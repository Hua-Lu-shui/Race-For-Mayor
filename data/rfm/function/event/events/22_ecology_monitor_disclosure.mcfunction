#事件22：生态监测公开（永久显示生态领先者）
scoreboard players set #event_22 event_used 1
scoreboard players set #reveal_ecology leader_reveal 1
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"text":"生态监测公开","color":"green","bold":true}
title @a[tag=rfm_participant] subtitle {"text":"生态领先者将永久公开","color":"white","bold":true}
tellraw @a[tag=rfm_participant] {"text":"【事件】生态监测公开","color":"green","bold":true}
tellraw @a[tag=rfm_participant] [{"text":"【事件背景】","color":"gold","bold":true},{"text":"全市环境监测平台正式上线，候选人在绿化、污染治理与清洁能源方面的领先情况将持续公开。","color":"white"}]
tellraw @a[tag=rfm_participant] [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"从本轮属性公示起，本局剩余时间将永久显示生态领先者。","color":"white"}]

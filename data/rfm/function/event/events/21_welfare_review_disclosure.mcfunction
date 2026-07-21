#事件21：民生评议公开（永久显示民生领先者）
scoreboard players set #event_21 event_used 1
scoreboard players set #reveal_welfare leader_reveal 1
title @a times 10 80 20
title @a title {"text":"民生评议公开","color":"red","bold":true}
title @a subtitle {"text":"民生领先者将永久公开","color":"white","bold":true}
tellraw @a {"text":"【城市事件】民生评议公开","color":"red","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"社区联合发布公共服务评议榜，医疗、教育、交通与保障工作的领先候选人将持续公示。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"本局剩余时间将永久显示民生领先者。当前民生领先：","color":"white"},{"selector":"@a[tag=rfm_lead_welfare]","color":"red","bold":true}]

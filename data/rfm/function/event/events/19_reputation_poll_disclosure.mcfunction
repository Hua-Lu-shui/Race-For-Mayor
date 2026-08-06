#事件19：舆情榜单公开（永久显示名誉领先者）
scoreboard players set #event_19 event_used 1
scoreboard players set #reveal_fame leader_reveal 1
title @a times 10 80 20
title @a title {"text":"舆情榜单公开","color":"aqua","bold":true}
title @a subtitle {"text":"名誉领先者将永久公开","color":"white","bold":true}
tellraw @a {"text":"【事件】舆情榜单公开","color":"aqua","bold":true}
tellraw @a [{"text":"【事件背景】","color":"gold","bold":true},{"text":"市政研究机构开放候选人舆情追踪榜单，公众可以持续查看谁在城市声望方面领先。","color":"white"}]
tellraw @a [{"text":"【事件影响】","color":"yellow","bold":true},{"text":"从本轮属性公示起，本局剩余时间将永久显示名誉领先者。","color":"white"}]

#事件20：经济数据公开（永久显示经济领先者）
scoreboard players set #event_20 event_used 1
scoreboard players set #reveal_economy leader_reveal 1
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.6882f1daac76","color":"yellow","bold":true}
title @a[tag=rfm_participant] subtitle {"translate":"rfm.text.0ff6dfcd42ba","color":"white","bold":true}
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.6c12d48e2328","color":"yellow","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.97fc004138f5","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.a1b00c6f7d9b","color":"white"}]

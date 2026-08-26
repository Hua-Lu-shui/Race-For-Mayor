#事件19：舆情榜单公开（永久显示名誉领先者）
scoreboard players set #event_19 event_used 1
scoreboard players set #reveal_fame leader_reveal 1
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.1dd546391b73","color":"aqua","bold":true}
title @a[tag=rfm_participant] subtitle {"translate":"rfm.text.2a1b1f09dda4","color":"white","bold":true}
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.8405042d4dd8","color":"aqua","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.88bfeab94650","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.a10095eab546","color":"white"}]

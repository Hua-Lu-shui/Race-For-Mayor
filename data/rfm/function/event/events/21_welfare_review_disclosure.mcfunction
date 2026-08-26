#事件21：民生评议公开（永久显示民生领先者）
scoreboard players set #event_21 event_used 1
scoreboard players set #reveal_welfare leader_reveal 1
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.2950957357bf","color":"red","bold":true}
title @a[tag=rfm_participant] subtitle {"translate":"rfm.text.9cc161e1bb15","color":"white","bold":true}
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.9d1c3b5e654c","color":"red","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.1e5749e9a516","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.031b01b6d69b","color":"white"}]

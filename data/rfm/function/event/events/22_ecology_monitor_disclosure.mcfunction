#事件22：生态监测公开（永久显示生态领先者）
scoreboard players set #event_22 event_used 1
scoreboard players set #reveal_ecology leader_reveal 1
title @a[tag=rfm_participant] times 10 80 20
title @a[tag=rfm_participant] title {"translate":"rfm.text.67799cdf3467","color":"green","bold":true}
title @a[tag=rfm_participant] subtitle {"translate":"rfm.text.fa9142159827","color":"white","bold":true}
tellraw @a[tag=rfm_participant] {"translate":"rfm.text.9770194d9334","color":"green","bold":true}
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.dd46bd7444bb","color":"gold","bold":true},{"translate":"rfm.text.637b471f15ec","color":"white"}]
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.a6f273449c10","color":"yellow","bold":true},{"translate":"rfm.text.9de8ad6d2ca5","color":"white"}]

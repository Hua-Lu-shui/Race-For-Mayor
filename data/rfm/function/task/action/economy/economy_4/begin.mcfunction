scoreboard players set @s supply_completed 0
scoreboard players set @s supply_time 2400
scoreboard players set @s supply_state 1

bossbar set rfm:supply_time players @a[tag=rfm_participant]
bossbar set rfm:supply_time max 2400
bossbar set rfm:supply_time value 2400
bossbar set rfm:supply_time name [{"translate":"rfm.text.e0c9d49f9ac6","color":"yellow"}]
bossbar set rfm:supply_time visible true

#倒计时结束后才向二十四个箱子装入物资，防止行动玩家提前取走
function rfm:task/action/economy/economy_4/stock_warehouse
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.2e8711d578da","color":"white"},{"translate":"rfm.text.4521048eace5","color":"#67D5FF","bold":true},{"translate":"rfm.text.06a993b1cb1a","color":"white"},{"translate":"rfm.text.58184c6bea97","color":"#FFD166","bold":true},{"text":"！","color":"white"}]

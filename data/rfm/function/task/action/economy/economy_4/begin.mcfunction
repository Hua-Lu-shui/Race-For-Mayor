scoreboard players set @s supply_completed 0
scoreboard players set @s supply_time 2400
scoreboard players set @s supply_state 1

bossbar set rfm:supply_time players @a
bossbar set rfm:supply_time max 2400
bossbar set rfm:supply_time value 2400
bossbar set rfm:supply_time name [{"text":"","font":"minecraft:default"},{"text":"\uE20C","font":"rfm:bossbar"},{"text":"\uE100","font":"rfm:bossbar","color":"white"},{"text":"\uE101","font":"rfm:bossbar"},{"text":"\uE234","font":"rfm:bossbar"},{"text":"商圈巡查","color":"yellow"}]
bossbar set rfm:supply_time visible true

#倒计时结束后才向二十四个箱子装入物资，防止行动玩家提前取走
function rfm:task/action/economy/economy_4/stock_warehouse
tellraw @a [{"text":"临时仓库已经开放，请逐箱寻找","color":"white"},{"text":"所需物资","color":"#67D5FF","bold":true},{"text":"并完成","color":"white"},{"text":"五家店铺的补货","color":"#FFD166","bold":true},{"text":"！","color":"white"}]

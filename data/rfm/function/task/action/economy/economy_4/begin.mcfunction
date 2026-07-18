scoreboard players set @s supply_completed 0
scoreboard players set @s supply_time 1200
scoreboard players set @s supply_state 1

bossbar set rfm:supply_time players @a
bossbar set rfm:supply_time max 1200
bossbar set rfm:supply_time value 1200
bossbar set rfm:supply_time name {"text":"商圈巡查","color":"yellow"}
bossbar set rfm:supply_time visible true

#倒计时结束后才向十二个箱子装入物资，防止行动玩家提前取走
function rfm:task/action/economy/economy_4/stock_warehouse
tellraw @a {"text":"临时仓库已经开放，请逐箱寻找所需物资并完成五家店铺的补货！","color":"white"}

scoreboard players set @s market_correct 0
scoreboard players set @s market_answer 0
scoreboard players set @s market_time 800
scoreboard players set @s market_state 1

bossbar set rfm:market_time players @a[tag=rfm_participant]
bossbar set rfm:market_time max 800
bossbar set rfm:market_time value 800
bossbar set rfm:market_time name [{"text":"市场调研","color":"yellow"}]
bossbar set rfm:market_time visible true

#正式开始时才发放绿宝石，防止玩家在倒计时前交易
give @s minecraft:emerald 64
tellraw @a[tag=rfm_participant] [{"text":"20名商人已经开市，请找出","color":"white"},{"text":"单位价格最低的交易","color":"#FFD166","bold":true},{"text":"并完成交易！","color":"white"}]
execute if score @s market_goods matches 1 run tellraw @a[tag=rfm_participant] [{"text":"本次商品：","color":"#67D5FF","bold":true},{"text":"面包","color":"white"}]
execute if score @s market_goods matches 2 run tellraw @a[tag=rfm_participant] [{"text":"本次商品：","color":"#67D5FF","bold":true},{"text":"苹果","color":"white"}]
execute if score @s market_goods matches 3 run tellraw @a[tag=rfm_participant] [{"text":"本次商品：","color":"#67D5FF","bold":true},{"text":"铁锭","color":"white"}]

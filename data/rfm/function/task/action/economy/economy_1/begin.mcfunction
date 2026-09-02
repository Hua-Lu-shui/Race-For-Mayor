scoreboard players set @s market_correct 0
scoreboard players set @s market_answer 0
scoreboard players set @s market_time 800
scoreboard players set @s market_state 1

bossbar set rfm:market_time players @a[tag=rfm_participant]
bossbar set rfm:market_time max 800
bossbar set rfm:market_time value 800
bossbar set rfm:market_time name [{"translate":"rfm.text.68b20f6eed5b","color":"yellow"}]
bossbar set rfm:market_time visible true

give @s minecraft:emerald 64
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.22cc1de43b4c","color":"white"},{"translate":"rfm.text.e920378edb57","color":"#FFD166","bold":true},{"translate":"rfm.text.520f677eed9f","color":"white"}]
execute if score @s market_goods matches 1 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.53adbbd21825","color":"#67D5FF","bold":true},{"translate":"rfm.text.008ceac850ee","color":"white"}]
execute if score @s market_goods matches 2 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.53adbbd21825","color":"#67D5FF","bold":true},{"translate":"rfm.text.b38d961e7096","color":"white"}]
execute if score @s market_goods matches 3 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.53adbbd21825","color":"#67D5FF","bold":true},{"translate":"rfm.text.495d862c3409","color":"white"}]

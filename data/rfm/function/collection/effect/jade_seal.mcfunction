#“玉玺”：属性公示后，若有任意属性领先，当前最高属性+8；并列领先同样满足条件
execute unless entity @s[tag=rfm_public_lead_fame] unless entity @s[tag=rfm_public_lead_economy] unless entity @s[tag=rfm_public_lead_welfare] unless entity @s[tag=rfm_public_lead_ecology] run return 0
function rfm:collection/trade/select_highest
execute if score @s collection_attr matches 1 run scoreboard players add @s fame 8
execute if score @s collection_attr matches 2 run scoreboard players add @s economy 8
execute if score @s collection_attr matches 3 run scoreboard players add @s welfare 8
execute if score @s collection_attr matches 4 run scoreboard players add @s ecology 8
function rfm:attribute/lock/enforce
function rfm:attribute/minimum
playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 0.7 0.7
execute if score @s collection_attr matches 1 run tellraw @s [{"translate":"rfm.text.693855af1806","color":"light_purple","bold":true},{"translate":"rfm.text.1506b0ca3da6","color":"white"}]
execute if score @s collection_attr matches 2 run tellraw @s [{"translate":"rfm.text.693855af1806","color":"light_purple","bold":true},{"translate":"rfm.text.7f05016da8c5","color":"white"}]
execute if score @s collection_attr matches 3 run tellraw @s [{"translate":"rfm.text.693855af1806","color":"light_purple","bold":true},{"translate":"rfm.text.f2f68e47beb9","color":"white"}]
execute if score @s collection_attr matches 4 run tellraw @s [{"translate":"rfm.text.693855af1806","color":"light_purple","bold":true},{"translate":"rfm.text.4dc040b94e49","color":"white"}]

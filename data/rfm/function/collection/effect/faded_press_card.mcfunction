#“褪色的记者证”：按属性公示标签判断；并列成为领先者时仍视为领先，不触发效果
execute if entity @s[tag=rfm_public_lead_fame] run return 0
execute if entity @s[tag=rfm_public_lead_economy] run return 0
execute if entity @s[tag=rfm_public_lead_welfare] run return 0
execute if entity @s[tag=rfm_public_lead_ecology] run return 0
scoreboard players add @s fame 4
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.7 0.9
tellraw @s [{"translate":"rfm.text.cad7f639f7b6","color":"green","bold":true},{"translate":"rfm.text.dcadf0253379","color":"white"}]

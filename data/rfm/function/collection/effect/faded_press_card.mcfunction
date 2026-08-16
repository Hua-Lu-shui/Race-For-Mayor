#“褪色的记者证”：按属性公示标签判断；并列成为领先者时仍视为领先，不触发效果
execute if entity @s[tag=rfm_public_lead_fame] run return 0
execute if entity @s[tag=rfm_public_lead_economy] run return 0
execute if entity @s[tag=rfm_public_lead_welfare] run return 0
execute if entity @s[tag=rfm_public_lead_ecology] run return 0
scoreboard players add @s fame 4
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.7 0.9
tellraw @s [{"text":"【褪色的记者证】","color":"green","bold":true},{"text":"你没有任何一项公示属性领先，名誉 +4。","color":"white"}]

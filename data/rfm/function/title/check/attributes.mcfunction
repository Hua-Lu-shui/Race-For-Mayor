execute as @a[tag=rfm_participant,scores={fame=100..}] unless entity @s[advancements={rfm:title/score_fame=true}] run function rfm:title/award/score_fame
execute as @a[tag=rfm_participant,scores={economy=100..}] unless entity @s[advancements={rfm:title/score_economy=true}] run function rfm:title/award/score_economy
execute as @a[tag=rfm_participant,scores={welfare=100..}] unless entity @s[advancements={rfm:title/score_welfare=true}] run function rfm:title/award/score_welfare
execute as @a[tag=rfm_participant,scores={ecology=100..}] unless entity @s[advancements={rfm:title/score_ecology=true}] run function rfm:title/award/score_ecology

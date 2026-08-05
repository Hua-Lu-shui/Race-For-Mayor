#属性达到100分及以上
execute as @a[scores={fame=100..}] unless entity @s[advancements={rfm:title/score_fame=true}] run function rfm:title/award/score_fame
execute as @a[scores={economy=100..}] unless entity @s[advancements={rfm:title/score_economy=true}] run function rfm:title/award/score_economy
execute as @a[scores={welfare=100..}] unless entity @s[advancements={rfm:title/score_welfare=true}] run function rfm:title/award/score_welfare
execute as @a[scores={ecology=100..}] unless entity @s[advancements={rfm:title/score_ecology=true}] run function rfm:title/award/score_ecology

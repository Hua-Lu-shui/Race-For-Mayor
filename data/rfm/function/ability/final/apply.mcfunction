scoreboard players set #abilities settle_state 1
execute as @a[tag=rfm_participant,scores={candidate=3}] run function rfm:ability/community/final
execute as @a[tag=rfm_participant,scores={candidate=5}] run function rfm:ability/official/final
function rfm:attribute/weight_minimum
scoreboard players operation 名誉 weight_display = #weight fame_weight
scoreboard players operation 经济 weight_display = #weight economy_weight
scoreboard players operation 民生 weight_display = #weight welfare_weight
scoreboard players operation 生态 weight_display = #weight ecology_weight

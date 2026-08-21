#先锁定执行状态，防止重复调用prepare叠加天赋
scoreboard players set #abilities settle_state 1
#社区领袖先处理个人最低属性
execute as @a[tag=rfm_participant,scores={candidate=3}] run function rfm:ability/community/final
#公务员随后调整全局权重；多名公务员的效果可以叠加
execute as @a[tag=rfm_participant,scores={candidate=5}] run function rfm:ability/official/final
function rfm:attribute/weight_minimum
#立即同步最终权重显示数据
scoreboard players operation 名誉 weight_display = #weight fame_weight
scoreboard players operation 经济 weight_display = #weight economy_weight
scoreboard players operation 民生 weight_display = #weight welfare_weight
scoreboard players operation 生态 weight_display = #weight ecology_weight

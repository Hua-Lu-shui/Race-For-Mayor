#清除上一次可能残留的实体
kill @e[type=minecraft:villager,tag=rfm_employment_applicant]
kill @e[type=minecraft:villager,tag=rfm_employment_recruiter]
kill @e[type=minecraft:item_display,tag=rfm_employment_model]
kill @e[type=minecraft:interaction,tag=rfm_employment_interaction]
kill @e[type=minecraft:text_display,tag=rfm_employment_label]

#招聘会地面与两侧展台
fill 432 -61 96 464 -61 118 minecraft:smooth_stone replace
fill 434 -60 98 462 -60 101 minecraft:spruce_planks replace
fill 434 -60 109 462 -60 113 minecraft:polished_andesite replace

function rfm:task/action/economy/economy_5/create_applicants
function rfm:task/action/economy/economy_5/create_employers
function rfm:task/action/economy/economy_5/prepare_layout

advancement revoke @s only rfm:employment_pickup_1
advancement revoke @s only rfm:employment_pickup_2
advancement revoke @s only rfm:employment_pickup_3
advancement revoke @s only rfm:employment_pickup_4
advancement revoke @s only rfm:employment_pickup_5

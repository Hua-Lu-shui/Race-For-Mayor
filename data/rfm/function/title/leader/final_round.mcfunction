#第10回合不走常规领先播报链，因此在进入结算前仅补记一次四项领先进度
tag @a remove rfm_lead_fame
scoreboard players set #lead_fame fame -2147483648
execute as @a if score @s fame > #lead_fame fame run scoreboard players operation #lead_fame fame = @s fame
execute as @a if score @s fame = #lead_fame fame run tag @s add rfm_lead_fame
scoreboard players set @a[tag=!rfm_lead_fame] title_lead_fame 0
execute as @a[tag=rfm_lead_fame] run function rfm:title/leader/fame

tag @a remove rfm_lead_economy
scoreboard players set #lead_economy economy -2147483648
execute as @a if score @s economy > #lead_economy economy run scoreboard players operation #lead_economy economy = @s economy
execute as @a if score @s economy = #lead_economy economy run tag @s add rfm_lead_economy
scoreboard players set @a[tag=!rfm_lead_economy] title_lead_econ 0
execute as @a[tag=rfm_lead_economy] run function rfm:title/leader/economy

tag @a remove rfm_lead_welfare
scoreboard players set #lead_welfare welfare -2147483648
execute as @a if score @s welfare > #lead_welfare welfare run scoreboard players operation #lead_welfare welfare = @s welfare
execute as @a if score @s welfare = #lead_welfare welfare run tag @s add rfm_lead_welfare
scoreboard players set @a[tag=!rfm_lead_welfare] title_lead_welf 0
execute as @a[tag=rfm_lead_welfare] run function rfm:title/leader/welfare

tag @a remove rfm_lead_ecology
scoreboard players set #lead_ecology ecology -2147483648
execute as @a if score @s ecology > #lead_ecology ecology run scoreboard players operation #lead_ecology ecology = @s ecology
execute as @a if score @s ecology = #lead_ecology ecology run tag @s add rfm_lead_ecology
scoreboard players set @a[tag=!rfm_lead_ecology] title_lead_eco 0
execute as @a[tag=rfm_lead_ecology] run function rfm:title/leader/ecology

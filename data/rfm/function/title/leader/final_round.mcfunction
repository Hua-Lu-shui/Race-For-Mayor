#第10回合不走常规领先播报链，因此在进入结算前仅补记一次四项领先进度
tag @a[tag=rfm_participant] remove rfm_lead_fame
scoreboard players set #lead_fame fame -2147483648
scoreboard players operation #lead_fame fame > @a[tag=rfm_participant] fame
execute as @a[tag=rfm_participant] if score @s fame = #lead_fame fame run tag @s add rfm_lead_fame
scoreboard players add @a[tag=rfm_participant,tag=rfm_lead_fame] stat_lead_f 1
scoreboard players set @a[tag=rfm_participant,tag=!rfm_lead_fame] title_lead_fame 0
execute as @a[tag=rfm_participant,tag=rfm_lead_fame] run function rfm:title/leader/fame

tag @a[tag=rfm_participant] remove rfm_lead_economy
scoreboard players set #lead_economy economy -2147483648
scoreboard players operation #lead_economy economy > @a[tag=rfm_participant] economy
execute as @a[tag=rfm_participant] if score @s economy = #lead_economy economy run tag @s add rfm_lead_economy
scoreboard players add @a[tag=rfm_participant,tag=rfm_lead_economy] stat_lead_e 1
scoreboard players set @a[tag=rfm_participant,tag=!rfm_lead_economy] title_lead_econ 0
execute as @a[tag=rfm_participant,tag=rfm_lead_economy] run function rfm:title/leader/economy

tag @a[tag=rfm_participant] remove rfm_lead_welfare
scoreboard players set #lead_welfare welfare -2147483648
scoreboard players operation #lead_welfare welfare > @a[tag=rfm_participant] welfare
execute as @a[tag=rfm_participant] if score @s welfare = #lead_welfare welfare run tag @s add rfm_lead_welfare
scoreboard players add @a[tag=rfm_participant,tag=rfm_lead_welfare] stat_lead_w 1
scoreboard players set @a[tag=rfm_participant,tag=!rfm_lead_welfare] title_lead_welf 0
execute as @a[tag=rfm_participant,tag=rfm_lead_welfare] run function rfm:title/leader/welfare

tag @a[tag=rfm_participant] remove rfm_lead_ecology
scoreboard players set #lead_ecology ecology -2147483648
scoreboard players operation #lead_ecology ecology > @a[tag=rfm_participant] ecology
execute as @a[tag=rfm_participant] if score @s ecology = #lead_ecology ecology run tag @s add rfm_lead_ecology
scoreboard players add @a[tag=rfm_participant,tag=rfm_lead_ecology] stat_lead_c 1
scoreboard players set @a[tag=rfm_participant,tag=!rfm_lead_ecology] title_lead_eco 0
execute as @a[tag=rfm_participant,tag=rfm_lead_ecology] run function rfm:title/leader/ecology

tag @a remove rfm_lead_welfare
scoreboard players set #lead_welfare welfare -2147483648
execute as @a if score @s welfare > #lead_welfare welfare run scoreboard players operation #lead_welfare welfare = @s welfare
execute as @a if score @s welfare = #lead_welfare welfare run tag @s add rfm_lead_welfare
tellraw @a [{"text":"民生领先：","color":"red","bold":true},{"selector":"@a[tag=rfm_lead_welfare]","color":"white","bold":true}]

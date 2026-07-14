tag @a remove rfm_lead_economy
scoreboard players set #lead_economy economy -2147483648
execute as @a if score @s economy > #lead_economy economy run scoreboard players operation #lead_economy economy = @s economy
execute as @a if score @s economy = #lead_economy economy run tag @s add rfm_lead_economy
tellraw @a [{"text":"经济领先：","color":"yellow","bold":true},{"selector":"@a[tag=rfm_lead_economy]","color":"white","bold":true}]

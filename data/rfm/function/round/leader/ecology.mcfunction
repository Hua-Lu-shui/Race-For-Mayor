tag @a remove rfm_lead_ecology
scoreboard players set #lead_ecology ecology -2147483648
execute as @a if score @s ecology > #lead_ecology ecology run scoreboard players operation #lead_ecology ecology = @s ecology
execute as @a if score @s ecology = #lead_ecology ecology run tag @s add rfm_lead_ecology
tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"selector":"@a[tag=rfm_lead_ecology]","color":"white","bold":true}]

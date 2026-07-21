#统计并公布本轮生态领先玩家
tag @a remove rfm_lead_ecology
scoreboard players set #lead_ecology ecology -2147483648
execute as @a if score @s ecology > #lead_ecology ecology run scoreboard players operation #lead_ecology ecology = @s ecology
execute as @a if score @s ecology = #lead_ecology ecology run tag @s add rfm_lead_ecology
execute if score #round round matches ..5 run tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"selector":"@a[tag=rfm_lead_ecology]","color":"white","bold":true}]
execute if score #round round matches 6.. if score #reveal_ecology leader_reveal matches 1 run tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"selector":"@a[tag=rfm_lead_ecology]","color":"white","bold":true}]
execute if score #round round matches 6.. unless score #reveal_ecology leader_reveal matches 1 run tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"text":"？","color":"white","bold":true}]

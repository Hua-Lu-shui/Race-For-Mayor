#统计并公布本轮经济领先玩家
tag @a remove rfm_lead_economy
scoreboard players set #lead_economy economy -2147483648
execute as @a if score @s economy > #lead_economy economy run scoreboard players operation #lead_economy economy = @s economy
execute as @a if score @s economy = #lead_economy economy run tag @s add rfm_lead_economy
execute if score #round round matches ..5 run tellraw @a [{"text":"经济领先：","color":"yellow","bold":true},{"selector":"@a[tag=rfm_lead_economy]","color":"white","bold":true}]
execute if score #round round matches 6.. if score #reveal_economy leader_reveal matches 1 run tellraw @a [{"text":"经济领先：","color":"yellow","bold":true},{"selector":"@a[tag=rfm_lead_economy]","color":"white","bold":true}]
execute if score #round round matches 6.. unless score #reveal_economy leader_reveal matches 1 run tellraw @a [{"text":"经济领先：","color":"yellow","bold":true},{"text":"？","color":"white","bold":true}]

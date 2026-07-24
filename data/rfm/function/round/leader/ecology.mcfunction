#统计并公布本轮生态领先玩家
tag @a remove rfm_lead_ecology
scoreboard players set #lead_ecology ecology -2147483648
execute as @a if score @s ecology > #lead_ecology ecology run scoreboard players operation #lead_ecology ecology = @s ecology
execute as @a if score @s ecology = #lead_ecology ecology run tag @s add rfm_lead_ecology
#记录连续生态领先轮数（并列领先同样计入）
scoreboard players set @a[tag=!rfm_lead_ecology] title_lead_eco 0
execute as @a[tag=rfm_lead_ecology] run function rfm:title/leader/ecology
#公示单独从非律师候选人中寻找最高者
tag @a remove rfm_public_lead_ecology
scoreboard players set #public_lead_ecology ecology -2147483648
execute as @a unless score @s candidate matches 7 if score @s ecology > #public_lead_ecology ecology run scoreboard players operation #public_lead_ecology ecology = @s ecology
execute as @a unless score @s candidate matches 7 if score @s ecology = #public_lead_ecology ecology run tag @s add rfm_public_lead_ecology
execute if score #round round matches ..5 if entity @a[tag=rfm_public_lead_ecology] run tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"selector":"@a[tag=rfm_public_lead_ecology]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches ..5 unless entity @a[tag=rfm_public_lead_ecology] run tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"text":"无公开候选人","color":"gray"}]
execute if score #round round matches 6.. if score #reveal_ecology leader_reveal matches 1 if entity @a[tag=rfm_public_lead_ecology] run tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"selector":"@a[tag=rfm_public_lead_ecology]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches 6.. if score #reveal_ecology leader_reveal matches 1 unless entity @a[tag=rfm_public_lead_ecology] run tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"text":"无公开候选人","color":"gray"}]
execute if score #round round matches 6.. unless score #reveal_ecology leader_reveal matches 1 if entity @a[tag=rfm_public_lead_ecology] run tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"text":"？","color":"white","bold":true}]

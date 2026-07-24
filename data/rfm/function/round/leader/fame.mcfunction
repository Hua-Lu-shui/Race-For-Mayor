#统计并公布本轮名誉领先玩家
tag @a remove rfm_lead_fame
scoreboard players set #lead_fame fame -2147483648
execute as @a if score @s fame > #lead_fame fame run scoreboard players operation #lead_fame fame = @s fame
execute as @a if score @s fame = #lead_fame fame run tag @s add rfm_lead_fame
#记录连续名誉领先轮数（并列领先同样计入）
scoreboard players set @a[tag=!rfm_lead_fame] title_lead_fame 0
execute as @a[tag=rfm_lead_fame] run function rfm:title/leader/fame
#公示单独从非律师候选人中寻找最高者；律师全场领先时改为公示第二高的非律师
tag @a remove rfm_public_lead_fame
scoreboard players set #public_lead_fame fame -2147483648
execute as @a unless score @s candidate matches 7 if score @s fame > #public_lead_fame fame run scoreboard players operation #public_lead_fame fame = @s fame
execute as @a unless score @s candidate matches 7 if score @s fame = #public_lead_fame fame run tag @s add rfm_public_lead_fame
execute if score #round round matches ..5 if entity @a[tag=rfm_public_lead_fame] run tellraw @a [{"text":"名誉领先：","color":"aqua","bold":true},{"selector":"@a[tag=rfm_public_lead_fame]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches ..5 unless entity @a[tag=rfm_public_lead_fame] run tellraw @a [{"text":"名誉领先：","color":"aqua","bold":true},{"text":"无公开候选人","color":"gray"}]
execute if score #round round matches 6.. if score #reveal_fame leader_reveal matches 1 if entity @a[tag=rfm_public_lead_fame] run tellraw @a [{"text":"名誉领先：","color":"aqua","bold":true},{"selector":"@a[tag=rfm_public_lead_fame]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches 6.. if score #reveal_fame leader_reveal matches 1 unless entity @a[tag=rfm_public_lead_fame] run tellraw @a [{"text":"名誉领先：","color":"aqua","bold":true},{"text":"无公开候选人","color":"gray"}]
execute if score #round round matches 6.. unless score #reveal_fame leader_reveal matches 1 if entity @a[tag=rfm_public_lead_fame] run tellraw @a [{"text":"名誉领先：","color":"aqua","bold":true},{"text":"？","color":"white","bold":true}]

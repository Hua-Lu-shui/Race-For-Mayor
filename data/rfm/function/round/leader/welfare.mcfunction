#统计并公布本回合民生领先玩家
tag @a remove rfm_lead_welfare
scoreboard players set #lead_welfare welfare -2147483648
execute as @a if score @s welfare > #lead_welfare welfare run scoreboard players operation #lead_welfare welfare = @s welfare
execute as @a if score @s welfare = #lead_welfare welfare run tag @s add rfm_lead_welfare
scoreboard players add @a[tag=rfm_lead_welfare] stat_lead_w 1
#记录连续民生领先回合数（并列领先同样计入）
scoreboard players set @a[tag=!rfm_lead_welfare] title_lead_welf 0
execute as @a[tag=rfm_lead_welfare] run function rfm:title/leader/welfare
#公示单独从非律师候选人中寻找最高者
tag @a remove rfm_public_lead_welfare
scoreboard players set #public_lead_welfare welfare -2147483648
execute as @a unless score @s candidate matches 7 if score @s welfare > #public_lead_welfare welfare run scoreboard players operation #public_lead_welfare welfare = @s welfare
execute as @a unless score @s candidate matches 7 if score @s welfare = #public_lead_welfare welfare run tag @s add rfm_public_lead_welfare
execute if score #round round matches ..5 if entity @a[tag=rfm_public_lead_welfare] run tellraw @a [{"text":"民生领先：","color":"red","bold":true},{"selector":"@a[tag=rfm_public_lead_welfare]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches ..5 unless entity @a[tag=rfm_public_lead_welfare] run tellraw @a [{"text":"民生领先：","color":"red","bold":true},{"text":"无公开候选人","color":"gray"}]
execute if score #round round matches 6.. if score #reveal_welfare leader_reveal matches 1 if entity @a[tag=rfm_public_lead_welfare] run tellraw @a [{"text":"民生领先：","color":"red","bold":true},{"selector":"@a[tag=rfm_public_lead_welfare]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches 6.. if score #reveal_welfare leader_reveal matches 1 unless entity @a[tag=rfm_public_lead_welfare] run tellraw @a [{"text":"民生领先：","color":"red","bold":true},{"text":"无公开候选人","color":"gray"}]
execute if score #round round matches 6.. unless score #reveal_welfare leader_reveal matches 1 if entity @a[tag=rfm_public_lead_welfare] run tellraw @a [{"text":"民生领先：","color":"red","bold":true},{"text":"?","color":"white","bold":true}]
#为全体播放民生领先播报提示音（在每位玩家自身位置播放）
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.8 1 1

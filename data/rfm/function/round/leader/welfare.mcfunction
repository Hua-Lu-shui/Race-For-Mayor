#统计并公布本轮民生领先玩家
tag @a remove rfm_lead_welfare
scoreboard players set #lead_welfare welfare -2147483648
execute as @a if score @s welfare > #lead_welfare welfare run scoreboard players operation #lead_welfare welfare = @s welfare
execute as @a if score @s welfare = #lead_welfare welfare run tag @s add rfm_lead_welfare
#记录连续民生领先轮数（并列领先同样计入）
scoreboard players set @a[tag=!rfm_lead_welfare] title_lead_welf 0
execute as @a[tag=rfm_lead_welfare] run function rfm:title/leader/welfare
execute if score #round round matches ..5 run tellraw @a [{"text":"民生领先：","color":"red","bold":true},{"selector":"@a[tag=rfm_lead_welfare]","color":"white","bold":true}]
execute if score #round round matches 6.. if score #reveal_welfare leader_reveal matches 1 run tellraw @a [{"text":"民生领先：","color":"red","bold":true},{"selector":"@a[tag=rfm_lead_welfare]","color":"white","bold":true}]
execute if score #round round matches 6.. unless score #reveal_welfare leader_reveal matches 1 run tellraw @a [{"text":"民生领先：","color":"red","bold":true},{"text":"？","color":"white","bold":true}]

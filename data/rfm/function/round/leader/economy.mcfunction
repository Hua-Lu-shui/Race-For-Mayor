#统计并公布本回合经济领先玩家
tag @a remove rfm_lead_economy
scoreboard players set #lead_economy economy -2147483648
execute as @a if score @s economy > #lead_economy economy run scoreboard players operation #lead_economy economy = @s economy
execute as @a if score @s economy = #lead_economy economy run tag @s add rfm_lead_economy
#记录连续经济领先回合数（并列领先同样计入）
scoreboard players set @a[tag=!rfm_lead_economy] title_lead_econ 0
execute as @a[tag=rfm_lead_economy] run function rfm:title/leader/economy
#公示单独从非律师候选人中寻找最高者
tag @a remove rfm_public_lead_economy
scoreboard players set #public_lead_economy economy -2147483648
execute as @a unless score @s candidate matches 7 if score @s economy > #public_lead_economy economy run scoreboard players operation #public_lead_economy economy = @s economy
execute as @a unless score @s candidate matches 7 if score @s economy = #public_lead_economy economy run tag @s add rfm_public_lead_economy
execute if score #round round matches ..5 if entity @a[tag=rfm_public_lead_economy] run tellraw @a [{"text":"经济领先：","color":"yellow","bold":true},{"selector":"@a[tag=rfm_public_lead_economy]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches ..5 unless entity @a[tag=rfm_public_lead_economy] run tellraw @a [{"text":"经济领先：","color":"yellow","bold":true},{"text":"无公开候选人","color":"gray"}]
execute if score #round round matches 6.. if score #reveal_economy leader_reveal matches 1 if entity @a[tag=rfm_public_lead_economy] run tellraw @a [{"text":"经济领先：","color":"yellow","bold":true},{"selector":"@a[tag=rfm_public_lead_economy]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches 6.. if score #reveal_economy leader_reveal matches 1 unless entity @a[tag=rfm_public_lead_economy] run tellraw @a [{"text":"经济领先：","color":"yellow","bold":true},{"text":"无公开候选人","color":"gray"}]
execute if score #round round matches 6.. unless score #reveal_economy leader_reveal matches 1 if entity @a[tag=rfm_public_lead_economy] run tellraw @a [{"text":"经济领先：","color":"yellow","bold":true},{"text":"?","color":"white","bold":true}]
#为全体播放经济领先播报提示音（在每位玩家自身位置播放）
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.8 1 1

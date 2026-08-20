#统计并公布本回合生态领先玩家
tag @a remove rfm_lead_ecology
scoreboard players set #lead_ecology ecology -2147483648
execute as @a if score @s ecology > #lead_ecology ecology run scoreboard players operation #lead_ecology ecology = @s ecology
execute as @a if score @s ecology = #lead_ecology ecology run tag @s add rfm_lead_ecology
scoreboard players add @a[tag=rfm_lead_ecology] stat_lead_c 1
#记录连续生态领先回合数（并列领先同样计入）
scoreboard players set @a[tag=!rfm_lead_ecology] title_lead_eco 0
execute as @a[tag=rfm_lead_ecology] run function rfm:title/leader/ecology
#记录用于属性公示及公示后藏品结算的领先者
tag @a remove rfm_public_lead_ecology
scoreboard players set #public_lead_ecology ecology -2147483648
execute as @a if score @s ecology > #public_lead_ecology ecology run scoreboard players operation #public_lead_ecology ecology = @s ecology
execute as @a if score @s ecology = #public_lead_ecology ecology run tag @s add rfm_public_lead_ecology
execute if score #round round matches ..5 if entity @a[tag=rfm_public_lead_ecology] run tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"selector":"@a[tag=rfm_public_lead_ecology]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches ..5 unless entity @a[tag=rfm_public_lead_ecology] run tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"text":"无公开候选人","color":"gray"}]
execute if score #round round matches 6.. if score #reveal_ecology leader_reveal matches 1 if entity @a[tag=rfm_public_lead_ecology] run tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"selector":"@a[tag=rfm_public_lead_ecology]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches 6.. if score #reveal_ecology leader_reveal matches 1 unless entity @a[tag=rfm_public_lead_ecology] run tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"text":"无公开候选人","color":"gray"}]
execute if score #round round matches 6.. unless score #reveal_ecology leader_reveal matches 1 if entity @a[tag=rfm_public_lead_ecology] run tellraw @a [{"text":"生态领先：","color":"green","bold":true},{"text":"?","color":"white","bold":true}]
#为全体播放生态领先播报提示音（在每位玩家自身位置播放）
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.8 1 1
#四项属性公示完成后，检查是否有人同时成为所有属性领先者
function rfm:title/check/all_attribute_leader

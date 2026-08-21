#统计并公布本回合名誉领先玩家
tag @a[tag=rfm_participant] remove rfm_lead_fame
scoreboard players set #lead_fame fame -2147483648
scoreboard players operation #lead_fame fame > @a[tag=rfm_participant] fame
execute as @a[tag=rfm_participant] if score @s fame = #lead_fame fame run tag @s add rfm_lead_fame
scoreboard players add @a[tag=rfm_participant,tag=rfm_lead_fame] stat_lead_f 1
#记录连续名誉领先回合数（并列领先同样计入）
scoreboard players set @a[tag=rfm_participant,tag=!rfm_lead_fame] title_lead_fame 0
execute as @a[tag=rfm_participant,tag=rfm_lead_fame] run function rfm:title/leader/fame
#记录用于属性公示及公示后藏品结算的领先者
tag @a[tag=rfm_participant] remove rfm_public_lead_fame
scoreboard players set #public_lead_fame fame -2147483648
scoreboard players operation #public_lead_fame fame > @a[tag=rfm_participant] fame
execute as @a[tag=rfm_participant] if score @s fame = #public_lead_fame fame run tag @s add rfm_public_lead_fame
execute if score #round round matches ..5 if entity @a[tag=rfm_participant,tag=rfm_public_lead_fame] run tellraw @a[tag=rfm_participant] [{"text":"名誉领先：","color":"aqua","bold":true},{"selector":"@a[tag=rfm_participant,tag=rfm_public_lead_fame]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches ..5 unless entity @a[tag=rfm_participant,tag=rfm_public_lead_fame] run tellraw @a[tag=rfm_participant] [{"text":"名誉领先：","color":"aqua","bold":true},{"text":"无公开候选人","color":"gray"}]
execute if score #round round matches 6.. if score #reveal_fame leader_reveal matches 1 if entity @a[tag=rfm_participant,tag=rfm_public_lead_fame] run tellraw @a[tag=rfm_participant] [{"text":"名誉领先：","color":"aqua","bold":true},{"selector":"@a[tag=rfm_participant,tag=rfm_public_lead_fame]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches 6.. if score #reveal_fame leader_reveal matches 1 unless entity @a[tag=rfm_participant,tag=rfm_public_lead_fame] run tellraw @a[tag=rfm_participant] [{"text":"名誉领先：","color":"aqua","bold":true},{"text":"无公开候选人","color":"gray"}]
execute if score #round round matches 6.. unless score #reveal_fame leader_reveal matches 1 if entity @a[tag=rfm_participant,tag=rfm_public_lead_fame] run tellraw @a[tag=rfm_participant] [{"text":"名誉领先：","color":"aqua","bold":true},{"text":"?","color":"white","bold":true}]
#为全体播放名誉领先播报提示音（在每位玩家自身位置播放）
execute as @a[tag=rfm_participant] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.8 1 1

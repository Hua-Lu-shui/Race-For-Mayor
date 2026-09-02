tag @a[tag=rfm_participant] remove rfm_lead_welfare
scoreboard players set #lead_welfare welfare -2147483648
scoreboard players operation #lead_welfare welfare > @a[tag=rfm_participant] welfare
execute as @a[tag=rfm_participant] if score @s welfare = #lead_welfare welfare run tag @s add rfm_lead_welfare
scoreboard players add @a[tag=rfm_participant,tag=rfm_lead_welfare] stat_lead_w 1
scoreboard players set @a[tag=rfm_participant,tag=!rfm_lead_welfare] title_lead_welf 0
execute as @a[tag=rfm_participant,tag=rfm_lead_welfare] run function rfm:title/leader/welfare
tag @a[tag=rfm_participant] remove rfm_public_lead_welfare
scoreboard players set #public_lead_welfare welfare -2147483648
scoreboard players operation #public_lead_welfare welfare > @a[tag=rfm_participant] welfare
execute as @a[tag=rfm_participant] if score @s welfare = #public_lead_welfare welfare run tag @s add rfm_public_lead_welfare
execute if score #round round matches ..5 if entity @a[tag=rfm_participant,tag=rfm_public_lead_welfare] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7fdb91a8120c","color":"red","bold":true},{"selector":"@a[tag=rfm_participant,tag=rfm_public_lead_welfare]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches ..5 unless entity @a[tag=rfm_participant,tag=rfm_public_lead_welfare] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7fdb91a8120c","color":"red","bold":true},{"translate":"rfm.text.ba4bdec4ac41","color":"gray"}]
execute if score #round round matches 6.. if score #reveal_welfare leader_reveal matches 1 if entity @a[tag=rfm_participant,tag=rfm_public_lead_welfare] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7fdb91a8120c","color":"red","bold":true},{"selector":"@a[tag=rfm_participant,tag=rfm_public_lead_welfare]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches 6.. if score #reveal_welfare leader_reveal matches 1 unless entity @a[tag=rfm_participant,tag=rfm_public_lead_welfare] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7fdb91a8120c","color":"red","bold":true},{"translate":"rfm.text.ba4bdec4ac41","color":"gray"}]
execute if score #round round matches 6.. unless score #reveal_welfare leader_reveal matches 1 if entity @a[tag=rfm_participant,tag=rfm_public_lead_welfare] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7fdb91a8120c","color":"red","bold":true},{"text":"?","color":"white","bold":true}]
execute as @a[tag=rfm_participant] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.8 1 1

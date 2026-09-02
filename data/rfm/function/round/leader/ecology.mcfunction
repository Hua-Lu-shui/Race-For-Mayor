tag @a[tag=rfm_participant] remove rfm_lead_ecology
scoreboard players set #lead_ecology ecology -2147483648
scoreboard players operation #lead_ecology ecology > @a[tag=rfm_participant] ecology
execute as @a[tag=rfm_participant] if score @s ecology = #lead_ecology ecology run tag @s add rfm_lead_ecology
scoreboard players add @a[tag=rfm_participant,tag=rfm_lead_ecology] stat_lead_c 1
scoreboard players set @a[tag=rfm_participant,tag=!rfm_lead_ecology] title_lead_eco 0
execute as @a[tag=rfm_participant,tag=rfm_lead_ecology] run function rfm:title/leader/ecology
tag @a[tag=rfm_participant] remove rfm_public_lead_ecology
scoreboard players set #public_lead_ecology ecology -2147483648
scoreboard players operation #public_lead_ecology ecology > @a[tag=rfm_participant] ecology
execute as @a[tag=rfm_participant] if score @s ecology = #public_lead_ecology ecology run tag @s add rfm_public_lead_ecology
execute if score #round round matches ..5 if entity @a[tag=rfm_participant,tag=rfm_public_lead_ecology] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b18676ac7795","color":"green","bold":true},{"selector":"@a[tag=rfm_participant,tag=rfm_public_lead_ecology]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches ..5 unless entity @a[tag=rfm_participant,tag=rfm_public_lead_ecology] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b18676ac7795","color":"green","bold":true},{"translate":"rfm.text.ba4bdec4ac41","color":"gray"}]
execute if score #round round matches 6.. if score #reveal_ecology leader_reveal matches 1 if entity @a[tag=rfm_participant,tag=rfm_public_lead_ecology] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b18676ac7795","color":"green","bold":true},{"selector":"@a[tag=rfm_participant,tag=rfm_public_lead_ecology]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches 6.. if score #reveal_ecology leader_reveal matches 1 unless entity @a[tag=rfm_participant,tag=rfm_public_lead_ecology] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b18676ac7795","color":"green","bold":true},{"translate":"rfm.text.ba4bdec4ac41","color":"gray"}]
execute if score #round round matches 6.. unless score #reveal_ecology leader_reveal matches 1 if entity @a[tag=rfm_participant,tag=rfm_public_lead_ecology] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.b18676ac7795","color":"green","bold":true},{"text":"?","color":"white","bold":true}]
execute as @a[tag=rfm_participant] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.8 1 1
function rfm:title/check/all_attribute_leader

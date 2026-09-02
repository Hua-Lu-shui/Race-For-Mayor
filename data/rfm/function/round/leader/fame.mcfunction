tag @a[tag=rfm_participant] remove rfm_lead_fame
scoreboard players set #lead_fame fame -2147483648
scoreboard players operation #lead_fame fame > @a[tag=rfm_participant] fame
execute as @a[tag=rfm_participant] if score @s fame = #lead_fame fame run tag @s add rfm_lead_fame
scoreboard players add @a[tag=rfm_participant,tag=rfm_lead_fame] stat_lead_f 1
scoreboard players set @a[tag=rfm_participant,tag=!rfm_lead_fame] title_lead_fame 0
execute as @a[tag=rfm_participant,tag=rfm_lead_fame] run function rfm:title/leader/fame
tag @a[tag=rfm_participant] remove rfm_public_lead_fame
scoreboard players set #public_lead_fame fame -2147483648
scoreboard players operation #public_lead_fame fame > @a[tag=rfm_participant] fame
execute as @a[tag=rfm_participant] if score @s fame = #public_lead_fame fame run tag @s add rfm_public_lead_fame
execute if score #round round matches ..5 if entity @a[tag=rfm_participant,tag=rfm_public_lead_fame] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.1135de09521e","color":"aqua","bold":true},{"selector":"@a[tag=rfm_participant,tag=rfm_public_lead_fame]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches ..5 unless entity @a[tag=rfm_participant,tag=rfm_public_lead_fame] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.1135de09521e","color":"aqua","bold":true},{"translate":"rfm.text.ba4bdec4ac41","color":"gray"}]
execute if score #round round matches 6.. if score #reveal_fame leader_reveal matches 1 if entity @a[tag=rfm_participant,tag=rfm_public_lead_fame] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.1135de09521e","color":"aqua","bold":true},{"selector":"@a[tag=rfm_participant,tag=rfm_public_lead_fame]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
execute if score #round round matches 6.. if score #reveal_fame leader_reveal matches 1 unless entity @a[tag=rfm_participant,tag=rfm_public_lead_fame] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.1135de09521e","color":"aqua","bold":true},{"translate":"rfm.text.ba4bdec4ac41","color":"gray"}]
execute if score #round round matches 6.. unless score #reveal_fame leader_reveal matches 1 if entity @a[tag=rfm_participant,tag=rfm_public_lead_fame] run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.1135de09521e","color":"aqua","bold":true},{"text":"?","color":"white","bold":true}]
execute as @a[tag=rfm_participant] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.8 1 1

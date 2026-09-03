execute if entity @s[tag=rfm_public_lead_fame] run return 0
execute if entity @s[tag=rfm_public_lead_economy] run return 0
execute if entity @s[tag=rfm_public_lead_welfare] run return 0
execute if entity @s[tag=rfm_public_lead_ecology] run return 0
execute if score @s fame_lock matches 1 run return 0
scoreboard players add @s fame 4
function rfm:attribute/lock/enforce
tellraw @s [{"translate":"rfm.text.cad7f639f7b6","color":"green","bold":true},{"translate":"rfm.text.dcadf0253379","color":"white"}]

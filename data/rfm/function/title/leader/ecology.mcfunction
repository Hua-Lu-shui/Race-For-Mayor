scoreboard players add @s title_lead_eco 1
execute if score @s title_lead_eco matches 3.. unless entity @s[advancements={rfm:title/leader_ecology=true}] run function rfm:title/award/leader_ecology

scoreboard players add @s title_lead_econ 1
execute if score @s title_lead_econ matches 3.. unless entity @s[advancements={rfm:title/leader_economy=true}] run function rfm:title/award/leader_economy

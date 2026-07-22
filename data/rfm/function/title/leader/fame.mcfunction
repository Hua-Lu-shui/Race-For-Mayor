scoreboard players add @s title_lead_fame 1
execute if score @s title_lead_fame matches 3.. unless entity @s[advancements={rfm:title/leader_fame=true}] run function rfm:title/award/leader_fame

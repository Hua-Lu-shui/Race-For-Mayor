scoreboard players add @s title_lead_welf 1
execute if score @s title_lead_welf matches 3.. unless entity @s[advancements={rfm:title/leader_welfare=true}] run function rfm:title/award/leader_welfare

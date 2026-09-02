scoreboard players set @s title_dec_fame 0
scoreboard players add @s title_dec_econ 1
scoreboard players set @s title_dec_welf 0
scoreboard players set @s title_dec_eco 0
execute if score @s title_dec_econ matches 3.. unless entity @s[advancements={rfm:title/decision_economy=true}] run function rfm:title/award/decision_economy

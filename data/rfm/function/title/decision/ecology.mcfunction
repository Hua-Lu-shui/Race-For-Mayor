scoreboard players set @s title_dec_fame 0
scoreboard players set @s title_dec_econ 0
scoreboard players set @s title_dec_welf 0
scoreboard players add @s title_dec_eco 1
execute if score @s title_dec_eco matches 3.. unless entity @s[advancements={rfm:title/decision_ecology=true}] run function rfm:title/award/decision_ecology

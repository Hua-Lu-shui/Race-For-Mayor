#连续选择同一属性；改选其他属性时对应连续次数清零
scoreboard players add @s title_dec_fame 1
scoreboard players set @s title_dec_econ 0
scoreboard players set @s title_dec_welf 0
scoreboard players set @s title_dec_eco 0
execute if score @s title_dec_fame matches 3.. unless entity @s[advancements={rfm:title/decision_fame=true}] run function rfm:title/award/decision_fame

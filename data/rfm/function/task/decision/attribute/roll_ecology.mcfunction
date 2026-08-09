#随机抽取一个生态决策，并用位图判断该玩家本局是否已经抽到过
scoreboard players add @s dec_used_eco 0
execute store result score @s decision_task run random value 401..420
scoreboard players set @s dec_used_bit 1
execute if score @s decision_task matches 402 run scoreboard players set @s dec_used_bit 2
execute if score @s decision_task matches 403 run scoreboard players set @s dec_used_bit 4
execute if score @s decision_task matches 404 run scoreboard players set @s dec_used_bit 8
execute if score @s decision_task matches 405 run scoreboard players set @s dec_used_bit 16
execute if score @s decision_task matches 406 run scoreboard players set @s dec_used_bit 32
execute if score @s decision_task matches 407 run scoreboard players set @s dec_used_bit 64
execute if score @s decision_task matches 408 run scoreboard players set @s dec_used_bit 128
execute if score @s decision_task matches 409 run scoreboard players set @s dec_used_bit 256
execute if score @s decision_task matches 410 run scoreboard players set @s dec_used_bit 512
execute if score @s decision_task matches 411 run scoreboard players set @s dec_used_bit 1024
execute if score @s decision_task matches 412 run scoreboard players set @s dec_used_bit 2048
execute if score @s decision_task matches 413 run scoreboard players set @s dec_used_bit 4096
execute if score @s decision_task matches 414 run scoreboard players set @s dec_used_bit 8192
execute if score @s decision_task matches 415 run scoreboard players set @s dec_used_bit 16384
execute if score @s decision_task matches 416 run scoreboard players set @s dec_used_bit 32768
execute if score @s decision_task matches 417 run scoreboard players set @s dec_used_bit 65536
execute if score @s decision_task matches 418 run scoreboard players set @s dec_used_bit 131072
execute if score @s decision_task matches 419 run scoreboard players set @s dec_used_bit 262144
execute if score @s decision_task matches 420 run scoreboard players set @s dec_used_bit 524288
scoreboard players operation @s dec_used_check = @s dec_used_eco
scoreboard players operation @s dec_used_check /= @s dec_used_bit
scoreboard players set #two dec_used_bit 2
scoreboard players operation @s dec_used_check %= #two dec_used_bit
execute if score @s dec_used_check matches 1 run return run function rfm:task/decision/attribute/roll_ecology
scoreboard players operation @s dec_used_eco += @s dec_used_bit
execute if score @s decision_task matches 401 run function rfm:task/decision/ecology/factory/factory_show
execute if score @s decision_task matches 402 run function rfm:task/decision/ecology/river/river_show
execute if score @s decision_task matches 403 run function rfm:task/decision/ecology/park/park_show
execute if score @s decision_task matches 404 run function rfm:task/decision/ecology/trash/trash_show
execute if score @s decision_task matches 405 run function rfm:task/decision/ecology/energy/energy_show
execute if score @s decision_task matches 406 run function rfm:task/decision/ecology/green_roof/green_roof_show
execute if score @s decision_task matches 407 run function rfm:task/decision/ecology/bike_lane/bike_lane_show
execute if score @s decision_task matches 408 run function rfm:task/decision/ecology/wetland/wetland_show
execute if score @s decision_task matches 409 run function rfm:task/decision/ecology/air_monitor/air_monitor_show
execute if score @s decision_task matches 410 run function rfm:task/decision/ecology/tree_cut/tree_cut_show
execute if score @s decision_task matches 411 run function rfm:task/decision/ecology/plastic_ban/plastic_ban_show
execute if score @s decision_task matches 412 run function rfm:task/decision/ecology/solar_school/solar_school_show
execute if score @s decision_task matches 413 run function rfm:task/decision/ecology/water_saving/water_saving_show
execute if score @s decision_task matches 414 run function rfm:task/decision/ecology/eco_patrol/eco_patrol_show
execute if score @s decision_task matches 415 run function rfm:task/decision/ecology/low_emission_zone/low_emission_zone_show
execute if score @s decision_task matches 416 run function rfm:task/decision/ecology/light_pollution/light_pollution_show
execute if score @s decision_task matches 417 run function rfm:task/decision/ecology/invasive_species/invasive_species_show
execute if score @s decision_task matches 418 run function rfm:task/decision/ecology/soil_garden/soil_garden_show
execute if score @s decision_task matches 419 run function rfm:task/decision/ecology/urban_wildlife/urban_wildlife_show
execute if score @s decision_task matches 420 run function rfm:task/decision/ecology/material_reuse/material_reuse_show
#学者额外获知三个选项的精确属性影响
function rfm:ability/scholar/preview

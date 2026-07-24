#随机抽取一个民生决策，并用位图判断该玩家本局是否已经抽到过
scoreboard players add @s dec_used_welf 0
execute store result score @s decision_task run random value 301..315
scoreboard players set @s dec_used_bit 1
execute if score @s decision_task matches 302 run scoreboard players set @s dec_used_bit 2
execute if score @s decision_task matches 303 run scoreboard players set @s dec_used_bit 4
execute if score @s decision_task matches 304 run scoreboard players set @s dec_used_bit 8
execute if score @s decision_task matches 305 run scoreboard players set @s dec_used_bit 16
execute if score @s decision_task matches 306 run scoreboard players set @s dec_used_bit 32
execute if score @s decision_task matches 307 run scoreboard players set @s dec_used_bit 64
execute if score @s decision_task matches 308 run scoreboard players set @s dec_used_bit 128
execute if score @s decision_task matches 309 run scoreboard players set @s dec_used_bit 256
execute if score @s decision_task matches 310 run scoreboard players set @s dec_used_bit 512
execute if score @s decision_task matches 311 run scoreboard players set @s dec_used_bit 1024
execute if score @s decision_task matches 312 run scoreboard players set @s dec_used_bit 2048
execute if score @s decision_task matches 313 run scoreboard players set @s dec_used_bit 4096
execute if score @s decision_task matches 314 run scoreboard players set @s dec_used_bit 8192
execute if score @s decision_task matches 315 run scoreboard players set @s dec_used_bit 16384
scoreboard players operation @s dec_used_check = @s dec_used_welf
scoreboard players operation @s dec_used_check /= @s dec_used_bit
scoreboard players set #two dec_used_bit 2
scoreboard players operation @s dec_used_check %= #two dec_used_bit
execute if score @s dec_used_check matches 1 run return run function rfm:task/decision/attribute/roll_welfare
scoreboard players operation @s dec_used_welf += @s dec_used_bit
execute if score @s decision_task matches 301 run function rfm:task/decision/welfare/hospital/hospital_show
execute if score @s decision_task matches 302 run function rfm:task/decision/welfare/housing/housing_show
execute if score @s decision_task matches 303 run function rfm:task/decision/welfare/education/education_show
execute if score @s decision_task matches 304 run function rfm:task/decision/welfare/transport/transport_show
execute if score @s decision_task matches 305 run function rfm:task/decision/welfare/pension/pension_show
execute if score @s decision_task matches 306 run function rfm:task/decision/welfare/clinic/clinic_show
execute if score @s decision_task matches 307 run function rfm:task/decision/welfare/childcare/childcare_show
execute if score @s decision_task matches 308 run function rfm:task/decision/welfare/food_safety/food_safety_show
execute if score @s decision_task matches 309 run function rfm:task/decision/welfare/sports_field/sports_field_show
execute if score @s decision_task matches 310 run function rfm:task/decision/welfare/elder_meals/elder_meals_show
execute if score @s decision_task matches 311 run function rfm:task/decision/welfare/noise_control/noise_control_show
execute if score @s decision_task matches 312 run function rfm:task/decision/welfare/rental_dispute/rental_dispute_show
execute if score @s decision_task matches 313 run function rfm:task/decision/welfare/disabled_access/disabled_access_show
execute if score @s decision_task matches 314 run function rfm:task/decision/welfare/emergency_shelter/emergency_shelter_show
execute if score @s decision_task matches 315 run function rfm:task/decision/welfare/library_hours/library_hours_show

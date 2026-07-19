clear @s minecraft:poppy[minecraft:custom_data~{rfm_cheer_flower:1}] 1
scoreboard players add @s cheer_score 1
scoreboard players add @s cheer_combo 1
execute if score @s cheer_combo matches 3 run scoreboard players add @s cheer_score 1
execute if score @s cheer_combo matches 5 run scoreboard players add @s cheer_score 2
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.5 1
execute if score @s cheer_combo matches 3 run title @s actionbar {"text":"三连接花！额外 +1分","color":"green","bold":true}
execute if score @s cheer_combo matches 5 run title @s actionbar {"text":"五连接花！额外 +2分","color":"gold","bold":true}

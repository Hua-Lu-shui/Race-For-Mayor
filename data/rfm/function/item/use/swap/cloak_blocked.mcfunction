tellraw @s [{"text":"【属性互换失败】","color":"red","bold":true},{"text":"目标持有神秘的斗篷，免疫属性互换。","color":"gray"}]
execute if score #used_item item_held matches 1 run tellraw @a[tag=rfm_item_target,limit=1] {"text":"一名玩家想与你互换名誉，但神秘的斗篷挡下了影响。","color":"aqua"}
execute if score #used_item item_held matches 2 run tellraw @a[tag=rfm_item_target,limit=1] {"text":"一名玩家想与你互换经济，但神秘的斗篷挡下了影响。","color":"yellow"}
execute if score #used_item item_held matches 3 run tellraw @a[tag=rfm_item_target,limit=1] {"text":"一名玩家想与你互换民生，但神秘的斗篷挡下了影响。","color":"red"}
execute if score #used_item item_held matches 4 run tellraw @a[tag=rfm_item_target,limit=1] {"text":"一名玩家想与你互换生态，但神秘的斗篷挡下了影响。","color":"green"}
scoreboard players set @a[tag=rfm_item_user] swap_pending 0
tag @a remove rfm_item_user
tag @a remove rfm_item_target

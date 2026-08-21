tellraw @s [{"text":"【属性互换失败】","color":"red","bold":true},{"text":"参与交换的一方已锁定该属性，无法进行交换。","color":"gray"}]
execute if score #used_item item_held matches 1 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"text":"一名玩家想与你互换名誉，但互换失败了。","color":"aqua"}
execute if score #used_item item_held matches 2 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"text":"一名玩家想与你互换经济，但互换失败了。","color":"yellow"}
execute if score #used_item item_held matches 3 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"text":"一名玩家想与你互换民生，但互换失败了。","color":"red"}
execute if score #used_item item_held matches 4 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"text":"一名玩家想与你互换生态，但互换失败了。","color":"green"}
scoreboard players set @a[tag=rfm_participant,tag=rfm_item_user] swap_pending 0
tag @a[tag=rfm_participant] remove rfm_item_user
tag @a[tag=rfm_participant] remove rfm_item_target

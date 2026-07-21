tellraw @a [{"text":"【属性互换失败】","color":"red","bold":true},{"text":"参与交换的一方已锁定该属性，无法进行交换。","color":"gray"}]
scoreboard players set @a[tag=rfm_item_user] swap_pending 0
tag @a remove rfm_item_user
tag @a remove rfm_item_target

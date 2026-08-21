tellraw @a[tag=rfm_participant,tag=rfm_item_user,limit=1] [{"text":"【维权意识】","color":"light_purple","bold":true},{"text":"律师不能成为属性互换目标，本次交换失败。","color":"white"}]
execute if entity @a[tag=rfm_participant,tag=rfm_item_target,scores={candidate=7}] run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] [{"text":"【维权意识】","color":"light_purple","bold":true},{"text":"你阻止了一次以自己为目标的属性互换。","color":"white"}]
scoreboard players set @a[tag=rfm_participant,tag=rfm_item_user] swap_pending 0
tag @a[tag=rfm_participant] remove rfm_item_user
tag @a[tag=rfm_participant] remove rfm_item_target

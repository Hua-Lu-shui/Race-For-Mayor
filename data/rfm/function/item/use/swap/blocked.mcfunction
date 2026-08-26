tellraw @s [{"translate":"rfm.text.57eee73ce739","color":"red","bold":true},{"translate":"rfm.text.c260bc318ca9","color":"gray"}]
execute if score #used_item item_held matches 1 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"translate":"rfm.text.d83cc168c55b","color":"aqua"}
execute if score #used_item item_held matches 2 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"translate":"rfm.text.c4f94af3f06d","color":"yellow"}
execute if score #used_item item_held matches 3 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"translate":"rfm.text.4da94a6b7cf6","color":"red"}
execute if score #used_item item_held matches 4 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"translate":"rfm.text.38823ae10838","color":"green"}
scoreboard players set @a[tag=rfm_participant,tag=rfm_item_user] swap_pending 0
tag @a[tag=rfm_participant] remove rfm_item_user
tag @a[tag=rfm_participant] remove rfm_item_target

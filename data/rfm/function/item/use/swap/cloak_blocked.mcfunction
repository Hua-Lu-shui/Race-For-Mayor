tellraw @s [{"translate":"rfm.text.57eee73ce739","color":"red","bold":true},{"translate":"rfm.text.d40bf71ec08d","color":"gray"}]
execute if score #used_item item_held matches 1 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"translate":"rfm.text.76b5e002d5de","color":"aqua"}
execute if score #used_item item_held matches 2 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"translate":"rfm.text.9b30bcc6b448","color":"yellow"}
execute if score #used_item item_held matches 3 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"translate":"rfm.text.9c0f63d15479","color":"red"}
execute if score #used_item item_held matches 4 run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] {"translate":"rfm.text.8c31f136bdd4","color":"green"}
scoreboard players set @a[tag=rfm_participant,tag=rfm_item_user] swap_pending 0
tag @a[tag=rfm_participant] remove rfm_item_user
tag @a[tag=rfm_participant] remove rfm_item_target

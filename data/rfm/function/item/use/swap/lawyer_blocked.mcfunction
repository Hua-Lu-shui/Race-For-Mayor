tellraw @a[tag=rfm_participant,tag=rfm_item_user,limit=1] [{"translate":"rfm.text.df0be2cf860b","color":"light_purple","bold":true},{"translate":"rfm.text.b54c5fb92154","color":"white"}]
execute if entity @a[tag=rfm_participant,tag=rfm_item_target,scores={candidate=7}] run tellraw @a[tag=rfm_participant,tag=rfm_item_target,limit=1] [{"translate":"rfm.text.df0be2cf860b","color":"light_purple","bold":true},{"translate":"rfm.text.64ee6ff4c177","color":"white"}]
scoreboard players set @a[tag=rfm_participant,tag=rfm_item_user] swap_pending 0
tag @a[tag=rfm_participant] remove rfm_item_user
tag @a[tag=rfm_participant] remove rfm_item_target

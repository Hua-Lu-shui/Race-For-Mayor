scoreboard players operation @a[tag=rfm_participant,tag=rfm_collection_thief,limit=1] collection_offer = @s collection_slot1
scoreboard players set @s collection_slot1 0
function rfm:collection/deliver
tellraw @s [{"translate":"rfm.text.1428054c4b5d","color":"gold","bold":true},{"translate":"rfm.text.0afb6ffb457c","color":"gray"}]

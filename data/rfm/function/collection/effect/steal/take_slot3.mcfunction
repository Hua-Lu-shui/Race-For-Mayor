scoreboard players operation @a[tag=rfm_participant,tag=rfm_collection_thief,limit=1] collection_offer = @s collection_slot3
scoreboard players set @s collection_slot3 0
function rfm:collection/deliver
tellraw @s [{"text":"【珠宝大盗的手套】","color":"gold","bold":true},{"text":"你的一件藏品被偷走了。","color":"gray"}]

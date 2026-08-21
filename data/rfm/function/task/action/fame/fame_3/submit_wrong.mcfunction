scoreboard players add @s photo_attempt 1
tellraw @a[tag=rfm_participant] [{"text":"本次照片有 ","color":"red"},{"score":{"name":"@s","objective":"photo_match"},"color":"yellow","bold":true},{"text":" / 5 个位置正确。","color":"red"}]
execute if score @s photo_attempt matches 1 run tellraw @a[tag=rfm_participant] {"text":"你还有一次提交机会，请重新选择居民并调整站位。","color":"aqua"}
execute if score @s photo_attempt matches 2.. run scoreboard players set @s photo_success 0
execute if score @s photo_attempt matches 2.. run function rfm:task/action/fame/fame_3/result

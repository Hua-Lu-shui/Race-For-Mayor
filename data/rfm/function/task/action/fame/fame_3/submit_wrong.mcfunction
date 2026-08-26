scoreboard players add @s photo_attempt 1
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.4a70d98f2f28","color":"red"},{"score":{"name":"@s","objective":"photo_match"},"color":"yellow","bold":true},{"translate":"rfm.text.1a8ef32c6704","color":"red"}]
execute if score @s photo_attempt matches 1 run tellraw @a[tag=rfm_participant] {"translate":"rfm.text.e32ffcdcbae4","color":"aqua"}
execute if score @s photo_attempt matches 2.. run scoreboard players set @s photo_success 0
execute if score @s photo_attempt matches 2.. run function rfm:task/action/fame/fame_3/result

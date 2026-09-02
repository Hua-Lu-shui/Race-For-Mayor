scoreboard players set @s trash_state 4
bossbar set rfm:trash_time visible false
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.52b9846e520e","color":"white"},{"score":{"name":"@s","objective":"trash_correct"},"color":"green"},{"translate":"rfm.text.0f621beba739","color":"white"}]

execute if score @s trash_correct matches 10 run scoreboard players add @s ecology 16
execute if score @s trash_correct matches 10 run function rfm:ability/military/perfect
execute if score @s trash_correct matches 10 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7ff83973073a","color":"green","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.3ded416eab03","color":"green"}]

execute if score @s trash_correct matches 7..9 run scoreboard players add @s ecology 10
execute if score @s trash_correct matches 7..9 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7ff83973073a","color":"green","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.2235270e63d9","color":"green"}]

execute if score @s trash_correct matches ..6 run scoreboard players add @s ecology 4
execute if score @s trash_correct matches ..6 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7ff83973073a","color":"green","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.556e8167f87f","color":"green"}]
function rfm:attribute/minimum
function rfm:task/action/ecology/ecology_4/cleanup

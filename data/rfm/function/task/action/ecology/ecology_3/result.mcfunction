scoreboard players set @s park_state 4
bossbar set rfm:park_time visible false
tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7904a0f7c490","color":"white"},{"score":{"name":"@s","objective":"park_progress"},"color":"green"},{"translate":"rfm.text.f3a5d60c82e7","color":"white"}]

execute if score @s park_progress matches 6 run scoreboard players add @s ecology 16
execute if score @s park_progress matches 6 run function rfm:ability/military/perfect
execute if score @s park_progress matches 6 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.37fa5d2bd936","color":"green","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.3ded416eab03","color":"green"}]

execute if score @s park_progress matches 4..5 run scoreboard players add @s ecology 10
execute if score @s park_progress matches 4..5 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.37fa5d2bd936","color":"green","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.2235270e63d9","color":"green"}]

execute if score @s park_progress matches ..3 run scoreboard players add @s ecology 4
execute if score @s park_progress matches ..3 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.37fa5d2bd936","color":"green","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.556e8167f87f","color":"green"}]
function rfm:attribute/minimum
function rfm:task/action/ecology/ecology_3/cleanup

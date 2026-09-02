scoreboard players set @s sample_state 4
bossbar set rfm:sample_time visible false

tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.48fc5063996a","color":"white"},{"score":{"name":"@s","objective":"sample_progress"},"color":"aqua"},{"translate":"rfm.text.d4ca2d7ce388","color":"white"}]

execute if score @s sample_progress matches 6 if score @s sample_time matches 200.. run scoreboard players add @s ecology 16
execute if score @s sample_progress matches 6 if score @s sample_time matches 200.. run function rfm:ability/military/perfect
execute if score @s sample_progress matches 6 if score @s sample_time matches 200.. run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7c45685c81da","color":"green","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.11942bccf147","color":"gold","bold":true},{"translate":"rfm.text.3ded416eab03","color":"green"}]

execute if score @s sample_progress matches 6 if score @s sample_time matches ..199 run scoreboard players add @s ecology 10
execute if score @s sample_progress matches 6 if score @s sample_time matches ..199 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7c45685c81da","color":"green","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.3b128aeb1496","color":"green","bold":true},{"translate":"rfm.text.2235270e63d9","color":"green"}]

execute if score @s sample_progress matches ..5 run scoreboard players add @s ecology 4
execute if score @s sample_progress matches ..5 run tellraw @a[tag=rfm_participant] [{"translate":"rfm.text.7c45685c81da","color":"green","bold":true},{"selector":"@s","color":"white"},{"translate":"rfm.text.d6b8f9a26de4","color":"red","bold":true},{"translate":"rfm.text.556e8167f87f","color":"green"}]
function rfm:attribute/minimum
function rfm:task/action/ecology/ecology_2/cleanup

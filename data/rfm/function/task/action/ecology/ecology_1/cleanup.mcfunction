bossbar set rfm:emission_time visible false
clear @s minecraft:paper[minecraft:custom_data={emission_ready:1}]
clear @s minecraft:paper[minecraft:custom_data={emission_id:1}]
clear @s minecraft:paper[minecraft:custom_data={emission_id:2}]
clear @s minecraft:paper[minecraft:custom_data={emission_id:3}]
clear @s minecraft:paper[minecraft:custom_data={emission_id:4}]
clear @s minecraft:paper[minecraft:custom_data={emission_id:5}]
clear @s minecraft:paper[minecraft:custom_data={emission_id:6}]
clear @s minecraft:paper[minecraft:custom_data={emission_id:7}]
clear @s minecraft:paper[minecraft:custom_data={emission_id:8}]
clear @s minecraft:paper[minecraft:custom_data={emission_id:9}]
function rfm:task/action/ecology/ecology_1/clear_drops

scoreboard players set @s emission_target 0
scoreboard players set @s emission_answer 0
scoreboard players set @s emission_time 0
scoreboard players set @s emission_delay 0
scoreboard players set @s emission_state 0

function rfm:task/action/sequence/complete_current

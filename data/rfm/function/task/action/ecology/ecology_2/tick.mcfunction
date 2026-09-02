scoreboard players remove @s sample_time 1
execute store result bossbar rfm:sample_time value run scoreboard players get @s sample_time

execute if score @s sample_progress matches 0 run particle minecraft:happy_villager 138 -57 78 0.25 0.25 0.25 0.02 3 force @a[tag=rfm_participant]
execute if score @s sample_progress matches 1 run particle minecraft:happy_villager 157 -57 77 0.25 0.25 0.25 0.02 3 force @a[tag=rfm_participant]
execute if score @s sample_progress matches 2 run particle minecraft:happy_villager 144 -57 75 0.25 0.25 0.25 0.02 3 force @a[tag=rfm_participant]
execute if score @s sample_progress matches 3 run particle minecraft:happy_villager 166 -57 72 0.25 0.25 0.25 0.02 3 force @a[tag=rfm_participant]
execute if score @s sample_progress matches 4 run particle minecraft:happy_villager 148 -57 70 0.25 0.25 0.25 0.02 3 force @a[tag=rfm_participant]
execute if score @s sample_progress matches 5 run particle minecraft:happy_villager 171 -57 78 0.25 0.25 0.25 0.02 3 force @a[tag=rfm_participant]

execute if score @s sample_progress matches 0 positioned 138 -57 78 if entity @s[distance=..3] if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run function rfm:task/action/ecology/ecology_2/sample
execute if score @s sample_progress matches 1 positioned 157 -57 77 if entity @s[distance=..3] if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run function rfm:task/action/ecology/ecology_2/sample
execute if score @s sample_progress matches 2 positioned 144 -57 75 if entity @s[distance=..3] if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run function rfm:task/action/ecology/ecology_2/sample
execute if score @s sample_progress matches 3 positioned 166 -57 72 if entity @s[distance=..3] if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run function rfm:task/action/ecology/ecology_2/sample
execute if score @s sample_progress matches 4 positioned 148 -57 70 if entity @s[distance=..3] if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run function rfm:task/action/ecology/ecology_2/sample
execute if score @s sample_progress matches 5 positioned 171 -57 78 if entity @s[distance=..3] if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run function rfm:task/action/ecology/ecology_2/sample

execute if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run tellraw @s {"translate":"rfm.text.e96a3b14542c","color":"red","bold":true}
execute if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run item replace entity @s weapon.mainhand with minecraft:glass_bottle 1

execute if score @s sample_state matches 1 if score @s sample_time matches ..0 run function rfm:task/action/ecology/ecology_2/result

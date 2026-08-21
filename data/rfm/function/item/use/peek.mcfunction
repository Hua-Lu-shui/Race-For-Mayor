#使用瞬间重新统计四项属性的全部并列领先者；结果仅发送给使用者
tag @a[tag=rfm_participant] remove rfm_peek_fame
tag @a[tag=rfm_participant] remove rfm_peek_economy
tag @a[tag=rfm_participant] remove rfm_peek_welfare
tag @a[tag=rfm_participant] remove rfm_peek_ecology

scoreboard players set #peek_fame fame -2147483648
scoreboard players set #peek_economy economy -2147483648
scoreboard players set #peek_welfare welfare -2147483648
scoreboard players set #peek_ecology ecology -2147483648
scoreboard players operation #peek_fame fame > @a[tag=rfm_participant] fame
scoreboard players operation #peek_economy economy > @a[tag=rfm_participant] economy
scoreboard players operation #peek_welfare welfare > @a[tag=rfm_participant] welfare
scoreboard players operation #peek_ecology ecology > @a[tag=rfm_participant] ecology
execute as @a[tag=rfm_participant] if score @s fame = #peek_fame fame run tag @s add rfm_peek_fame
execute as @a[tag=rfm_participant] if score @s economy = #peek_economy economy run tag @s add rfm_peek_economy
execute as @a[tag=rfm_participant] if score @s welfare = #peek_welfare welfare run tag @s add rfm_peek_welfare
execute as @a[tag=rfm_participant] if score @s ecology = #peek_ecology ecology run tag @s add rfm_peek_ecology

tellraw @s {"text":"【属性窥探】当前属性领先者","color":"light_purple","bold":true}
tellraw @s [{"text":"名誉领先：","color":"aqua","bold":true},{"selector":"@a[tag=rfm_participant,tag=rfm_peek_fame]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
tellraw @s [{"text":"经济领先：","color":"yellow","bold":true},{"selector":"@a[tag=rfm_participant,tag=rfm_peek_economy]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
tellraw @s [{"text":"民生领先：","color":"red","bold":true},{"selector":"@a[tag=rfm_participant,tag=rfm_peek_welfare]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
tellraw @s [{"text":"生态领先：","color":"green","bold":true},{"selector":"@a[tag=rfm_participant,tag=rfm_peek_ecology]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]

tag @a[tag=rfm_participant] remove rfm_peek_fame
tag @a[tag=rfm_participant] remove rfm_peek_economy
tag @a[tag=rfm_participant] remove rfm_peek_welfare
tag @a[tag=rfm_participant] remove rfm_peek_ecology

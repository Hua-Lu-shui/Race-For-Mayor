#使用瞬间重新统计四项属性的全部并列领先者；结果仅发送给使用者
tag @a remove rfm_peek_fame
tag @a remove rfm_peek_economy
tag @a remove rfm_peek_welfare
tag @a remove rfm_peek_ecology

scoreboard players set #peek_fame fame -2147483648
scoreboard players set #peek_economy economy -2147483648
scoreboard players set #peek_welfare welfare -2147483648
scoreboard players set #peek_ecology ecology -2147483648
execute as @a if score @s fame > #peek_fame fame run scoreboard players operation #peek_fame fame = @s fame
execute as @a if score @s economy > #peek_economy economy run scoreboard players operation #peek_economy economy = @s economy
execute as @a if score @s welfare > #peek_welfare welfare run scoreboard players operation #peek_welfare welfare = @s welfare
execute as @a if score @s ecology > #peek_ecology ecology run scoreboard players operation #peek_ecology ecology = @s ecology
execute as @a if score @s fame = #peek_fame fame run tag @s add rfm_peek_fame
execute as @a if score @s economy = #peek_economy economy run tag @s add rfm_peek_economy
execute as @a if score @s welfare = #peek_welfare welfare run tag @s add rfm_peek_welfare
execute as @a if score @s ecology = #peek_ecology ecology run tag @s add rfm_peek_ecology

tellraw @s {"text":"【属性窥探】当前属性领先者","color":"light_purple","bold":true}
tellraw @s [{"text":"名誉领先：","color":"aqua","bold":true},{"selector":"@a[tag=rfm_peek_fame]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
tellraw @s [{"text":"经济领先：","color":"yellow","bold":true},{"selector":"@a[tag=rfm_peek_economy]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
tellraw @s [{"text":"民生领先：","color":"red","bold":true},{"selector":"@a[tag=rfm_peek_welfare]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]
tellraw @s [{"text":"生态领先：","color":"green","bold":true},{"selector":"@a[tag=rfm_peek_ecology]","separator":{"text":"、","color":"gray"},"color":"white","bold":true}]

tag @a remove rfm_peek_fame
tag @a remove rfm_peek_economy
tag @a remove rfm_peek_welfare
tag @a remove rfm_peek_ecology

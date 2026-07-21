#统计并公布本轮名誉领先玩家
tag @a remove rfm_lead_fame
scoreboard players set #lead_fame fame -2147483648
execute as @a if score @s fame > #lead_fame fame run scoreboard players operation #lead_fame fame = @s fame
execute as @a if score @s fame = #lead_fame fame run tag @s add rfm_lead_fame
execute if score #round round matches ..5 run tellraw @a [{"text":"名誉领先：","color":"aqua","bold":true},{"selector":"@a[tag=rfm_lead_fame]","color":"white","bold":true}]
execute if score #round round matches 6.. if score #reveal_fame leader_reveal matches 1 run tellraw @a [{"text":"名誉领先：","color":"aqua","bold":true},{"selector":"@a[tag=rfm_lead_fame]","color":"white","bold":true}]
execute if score #round round matches 6.. unless score #reveal_fame leader_reveal matches 1 run tellraw @a [{"text":"名誉领先：","color":"aqua","bold":true},{"text":"？","color":"white","bold":true}]

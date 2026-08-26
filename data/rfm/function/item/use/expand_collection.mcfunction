#每名玩家本局只能生效一次；选择阶段另有领取限制，此处防止复制物品或命令绕过
execute if score @s col_expand_used matches 1.. run return run tellraw @s {"translate":"rfm.text.fca7aa1ee222","color":"red"}
scoreboard players set @s col_expand_used 1
scoreboard players add @s collection_cap 1
tellraw @s [{"translate":"rfm.text.34c19fd26f13","color":"gold","bold":true},{"translate":"rfm.text.fac6016e64d9","color":"white"},{"score":{"name":"@s","objective":"collection_cap"},"color":"gold"},{"translate":"rfm.text.e0a74f60e09a","color":"white"}]

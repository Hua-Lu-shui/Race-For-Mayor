#根据切土豆的刀数和剩余时间结算民生奖励，不影响其他属性
scoreboard players set @s cooking_state 4
bossbar set rfm:cooking_time visible false

#切满250刀且剩余至少10秒
execute if score @s cooking_clicks matches 250.. if score @s cooking_time matches 200.. run scoreboard players add @s welfare 14
execute if score @s cooking_clicks matches 250.. if score @s cooking_time matches 200.. run function rfm:ability/military/perfect
execute if score @s cooking_clicks matches 250.. if score @s cooking_time matches 200.. run tellraw @a [{"text":"【厨艺大比拼】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 完美！","color":"gold","bold":true},{"text":" 民生 +14","color":"red"}]

#切满250刀但剩余不足10秒
execute if score @s cooking_clicks matches 250.. if score @s cooking_time matches ..199 run scoreboard players add @s welfare 10
execute if score @s cooking_clicks matches 250.. if score @s cooking_time matches ..199 run tellraw @a [{"text":"【厨艺大比拼】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 任务完成！","color":"green","bold":true},{"text":" 民生 +10","color":"red"}]

#未切满250刀：失败
execute if score @s cooking_clicks matches ..249 run tellraw @a [{"text":"【厨艺大比拼】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 任务失败。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]

function rfm:attribute/minimum
function rfm:task/action/welfare/welfare_5/cleanup

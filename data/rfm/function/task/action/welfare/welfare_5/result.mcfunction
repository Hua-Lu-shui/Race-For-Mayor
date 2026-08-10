#根据切土豆的刀数和剩余时间结算民生奖励，不影响其他属性
scoreboard players set @s cooking_state 4
bossbar set rfm:cooking_time visible false

#切满250刀且剩余至少10秒
execute if score @s cooking_clicks matches 250.. if score @s cooking_time matches 200.. run scoreboard players add @s welfare 7
execute if score @s cooking_clicks matches 250.. if score @s cooking_time matches 200.. run function rfm:ability/military/perfect
execute if score @s cooking_clicks matches 250.. if score @s cooking_time matches 200.. run tellraw @a [{"text":"【厨艺大比拼】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 以惊人的速度切完了250刀！","color":"gold","bold":true},{"text":" 民生 +7","color":"red"}]

#切满250刀但剩余不足10秒
execute if score @s cooking_clicks matches 250.. if score @s cooking_time matches ..199 run scoreboard players add @s welfare 5
execute if score @s cooking_clicks matches 250.. if score @s cooking_time matches ..199 run tellraw @a [{"text":"【厨艺大比拼】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 在规定时间内切完了250刀。","color":"green","bold":true},{"text":" 民生 +5","color":"red"}]

#时间结束时根据完成度分档
execute if score @s cooking_clicks matches 175..249 run scoreboard players add @s welfare 3
execute if score @s cooking_clicks matches 175..249 run tellraw @a [{"text":"【厨艺大比拼】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 接近切完土豆，但没能达到250刀。","color":"yellow","bold":true},{"text":" 民生 +3","color":"red"}]
execute if score @s cooking_clicks matches ..174 run tellraw @a [{"text":"【厨艺大比拼】","color":"red","bold":true},{"selector":"@s","color":"white"},{"text":" 未能在规定时间内完成250刀。","color":"red","bold":true},{"text":" 属性保持不变","color":"gray"}]

function rfm:attribute/minimum
function rfm:task/action/welfare/welfare_5/cleanup

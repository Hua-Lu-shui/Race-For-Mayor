#交易发生在回合结束等待期；重新同时显示藏品与准备时钟
function rfm:collection/deliver
scoreboard players operation #next_round round = #round round
scoreboard players add #next_round round 1
item replace entity @s hotbar.4 with minecraft:clock[minecraft:custom_name='[{"text":"准备第","color":"green","bold":true,"italic":false},{"score":{"name":"#next_round","objective":"round"},"color":"green","bold":true,"italic":false},{"text":"回合","color":"green","bold":true,"italic":false}]',minecraft:lore=['[{"text":"全员准备后开始第","color":"gray","italic":false},{"score":{"name":"#next_round","objective":"round"},"color":"gray","italic":false},{"text":"回合","color":"gray","italic":false}]'],minecraft:custom_data={next_round_ready:1}] 1

#交易发生在回合结束等待期；重新同时显示藏品与准备时钟
function rfm:collection/deliver
item replace entity @s hotbar.4 with minecraft:clock[minecraft:custom_name='{"text":"准备下一回合","color":"green","bold":true,"italic":false}',minecraft:lore=['{"text":"全员准备后开始下一回合","color":"gray","italic":false}'],minecraft:custom_data={next_round_ready:1}] 1

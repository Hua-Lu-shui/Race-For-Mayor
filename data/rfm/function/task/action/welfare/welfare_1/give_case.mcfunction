function rfm:task/action/welfare/welfare_1/roll_case
execute if score @s hospital_case matches 1 run scoreboard players set @s hospital_used_1 1
execute if score @s hospital_case matches 2 run scoreboard players set @s hospital_used_2 1
execute if score @s hospital_case matches 3 run scoreboard players set @s hospital_used_3 1
execute if score @s hospital_case matches 4 run scoreboard players set @s hospital_used_4 1
execute if score @s hospital_case matches 5 run scoreboard players set @s hospital_used_5 1
execute if score @s hospital_case matches 6 run scoreboard players set @s hospital_used_6 1
execute if score @s hospital_case matches 7 run scoreboard players set @s hospital_used_7 1
execute if score @s hospital_case matches 8 run scoreboard players set @s hospital_used_8 1
execute if score @s hospital_case matches 9 run scoreboard players set @s hospital_used_9 1
execute if score @s hospital_case matches 10 run scoreboard players set @s hospital_used_10 1
execute if score @s hospital_case matches 11 run scoreboard players set @s hospital_used_11 1
execute if score @s hospital_case matches 12 run scoreboard players set @s hospital_used_12 1

scoreboard players set @s hospital_target 0
execute if score @s hospital_case matches 1..4 run scoreboard players set @s hospital_target 1
execute if score @s hospital_case matches 5..8 run scoreboard players set @s hospital_target 2
execute if score @s hospital_case matches 9..12 run scoreboard players set @s hospital_target 3

execute if score @s hospital_case matches 1 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"translate":"rfm.text.eecfc083177a","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"translate":"rfm.text.bfa2a1849283"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 2 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"translate":"rfm.text.eecfc083177a","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"translate":"rfm.text.e769293def2c"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 3 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"translate":"rfm.text.eecfc083177a","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"translate":"rfm.text.7a1c579f4ecf"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 4 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"translate":"rfm.text.eecfc083177a","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"translate":"rfm.text.916e92268bd5"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 5 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"translate":"rfm.text.eecfc083177a","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"translate":"rfm.text.64eaed690572"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 6 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"translate":"rfm.text.eecfc083177a","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"translate":"rfm.text.3395c77f7103"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 7 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"translate":"rfm.text.eecfc083177a","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"translate":"rfm.text.454b9bd28207"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 8 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"translate":"rfm.text.eecfc083177a","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"translate":"rfm.text.bbe29c678525"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 9 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"translate":"rfm.text.eecfc083177a","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"translate":"rfm.text.6fc14a5d276f"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 10 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"translate":"rfm.text.eecfc083177a","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"translate":"rfm.text.3153ee9963d7"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 11 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"translate":"rfm.text.eecfc083177a","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"translate":"rfm.text.a30197fa3651"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1
execute if score @s hospital_case matches 12 run item replace entity @s hotbar.4 with minecraft:written_book[minecraft:custom_name='{"translate":"rfm.text.eecfc083177a","color":"white","bold":true,"italic":false}',minecraft:written_book_content={title:"患者病历",author:"社区医院",generation:0,pages:['{"translate":"rfm.text.e857aec6c3e2"}'],resolved:0b},minecraft:custom_data={hospital_case:1}] 1

title @s actionbar [{"translate":"rfm.text.6666f97c70c8","color":"white"},{"score":{"name":"@s","objective":"hospital_round"},"color":"yellow"},{"translate":"rfm.text.36ecf452a78c","color":"white"}]

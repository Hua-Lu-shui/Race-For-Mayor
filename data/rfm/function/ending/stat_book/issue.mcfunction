#先生成可修改的书本物品实体，再把动态书页列表写入书本组件
summon minecraft:item ~ ~ ~ {Tags:["rfm_stat_book_pending"],PickupDelay:0s,Item:{id:"minecraft:written_book",count:1,components:{"minecraft:custom_name":'{"text":"竞选统计书","color":"gold","bold":true,"italic":false}',"minecraft:written_book_content":{title:"竞选统计书",author:"市长竞选委员会",generation:0,pages:[{raw:'{"text":""}'}],resolved:0b},"minecraft:custom_data":{rfm_stat_book:1}}}}
data modify entity @e[type=minecraft:item,tag=rfm_stat_book_pending,distance=..1,sort=nearest,limit=1] Item.components."minecraft:written_book_content".pages set from storage rfm:stat_book book.pages
#限定为当前玩家拾取；背包已满时书会留在玩家脚下，不会丢失
data modify entity @e[type=minecraft:item,tag=rfm_stat_book_pending,distance=..1,sort=nearest,limit=1] Owner set from entity @s UUID
tag @e[type=minecraft:item,tag=rfm_stat_book_pending,distance=..1,sort=nearest,limit=1] remove rfm_stat_book_pending

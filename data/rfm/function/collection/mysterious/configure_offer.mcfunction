#collection_attr：1名誉、2经济、3民生、4生态、5当前最高属性、6所有属性
scoreboard players set @s collection_attr 0
scoreboard players set @s collection_cost -1
#藏品1“褪色的记者证”：名誉-10
execute if score @s collection_offer matches 1 run scoreboard players set @s collection_attr 1
execute if score @s collection_offer matches 1 run scoreboard players set @s collection_cost 10
#藏品2“无名英雄勋章”：当前最高属性-20；并列最高时随机扣除其中一项
execute if score @s collection_offer matches 2 run scoreboard players set @s collection_attr 5
execute if score @s collection_offer matches 2 run scoreboard players set @s collection_cost 20
#藏品3“金属怀表”：所有属性-5
execute if score @s collection_offer matches 3 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 3 run scoreboard players set @s collection_cost 5
#藏品4“带批注的档案”：当前最高属性-8；并列最高时随机扣除其中一项
execute if score @s collection_offer matches 4 run scoreboard players set @s collection_attr 5
execute if score @s collection_offer matches 4 run scoreboard players set @s collection_cost 8
#藏品5“诉讼卷宗”：所有属性-2
execute if score @s collection_offer matches 5 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 5 run scoreboard players set @s collection_cost 2
#藏品6“老旧的战功章”：所有属性-1
execute if score @s collection_offer matches 6 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 6 run scoreboard players set @s collection_cost 1

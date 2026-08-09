#collection_attr：1名誉、2经济、3民生、4生态、5当前最高属性、6所有属性、7当前最高与最低属性、8当前最低属性
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
#藏品7“水晶球”：当前最高属性-30；并列最高时随机扣除其中一项
execute if score @s collection_offer matches 7 run scoreboard players set @s collection_attr 5
execute if score @s collection_offer matches 7 run scoreboard players set @s collection_cost 30
#藏品8“银戒指”：所有属性-3
execute if score @s collection_offer matches 8 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 8 run scoreboard players set @s collection_cost 3
#藏品9“金戒指”：所有属性-5
execute if score @s collection_offer matches 9 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 9 run scoreboard players set @s collection_cost 5
#藏品10“神秘的斗篷”：所有属性-5
execute if score @s collection_offer matches 10 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 10 run scoreboard players set @s collection_cost 5
#藏品11“琥珀”：所有属性-15
execute if score @s collection_offer matches 11 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 11 run scoreboard players set @s collection_cost 15
#藏品12“魔镜”：所有属性-10
execute if score @s collection_offer matches 12 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 12 run scoreboard players set @s collection_cost 10
#藏品13“做工精美的手镯”：当前最高与最低属性-5
execute if score @s collection_offer matches 13 run scoreboard players set @s collection_attr 7
execute if score @s collection_offer matches 13 run scoreboard players set @s collection_cost 5
#藏品14“珠宝大盗的手套”：所有属性-1
execute if score @s collection_offer matches 14 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 14 run scoreboard players set @s collection_cost 1
#藏品15“历史悠久的花瓶”：当前最低属性-20
execute if score @s collection_offer matches 15 run scoreboard players set @s collection_attr 8
execute if score @s collection_offer matches 15 run scoreboard players set @s collection_cost 20
#藏品16“护目镜”：生态-5
execute if score @s collection_offer matches 16 run scoreboard players set @s collection_attr 4
execute if score @s collection_offer matches 16 run scoreboard players set @s collection_cost 5
#藏品17“不知名种子”：生态-5
execute if score @s collection_offer matches 17 run scoreboard players set @s collection_attr 4
execute if score @s collection_offer matches 17 run scoreboard players set @s collection_cost 5
#藏品18“玩具熊”：民生-5
execute if score @s collection_offer matches 18 run scoreboard players set @s collection_attr 3
execute if score @s collection_offer matches 18 run scoreboard players set @s collection_cost 5
#藏品19“礼品盒”：民生-5
execute if score @s collection_offer matches 19 run scoreboard players set @s collection_attr 3
execute if score @s collection_offer matches 19 run scoreboard players set @s collection_cost 5
#藏品20“招财猫”：经济-5
execute if score @s collection_offer matches 20 run scoreboard players set @s collection_attr 2
execute if score @s collection_offer matches 20 run scoreboard players set @s collection_cost 5
#藏品21“摇钱树”：经济-5
execute if score @s collection_offer matches 21 run scoreboard players set @s collection_attr 2
execute if score @s collection_offer matches 21 run scoreboard players set @s collection_cost 5
#藏品22“华丽的面具”：名誉-5
execute if score @s collection_offer matches 22 run scoreboard players set @s collection_attr 1
execute if score @s collection_offer matches 22 run scoreboard players set @s collection_cost 5
#藏品23“礼服”：名誉-5
execute if score @s collection_offer matches 23 run scoreboard players set @s collection_attr 1
execute if score @s collection_offer matches 23 run scoreboard players set @s collection_cost 5
#藏品24“手枪子弹”：当前最高属性-10
execute if score @s collection_offer matches 24 run scoreboard players set @s collection_attr 5
execute if score @s collection_offer matches 24 run scoreboard players set @s collection_cost 10
#藏品25“无人认领的钥匙”：当前最低属性-20
execute if score @s collection_offer matches 25 run scoreboard players set @s collection_attr 8
execute if score @s collection_offer matches 25 run scoreboard players set @s collection_cost 20

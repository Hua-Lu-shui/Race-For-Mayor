#collection_attr：1名誉、2经济、3民生、4生态、5当前最高属性、6所有属性、7当前最高与最低属性、8当前最低属性
scoreboard players set @s collection_attr 0
scoreboard players set @s collection_cost -1
#藏品1“褪色的记者证”：名誉-10
execute if score @s collection_offer matches 1 run scoreboard players set @s collection_attr 1
execute if score @s collection_offer matches 1 run scoreboard players set @s collection_cost 10
#藏品2“羽毛笔”：当前最高属性-15；并列最高时随机扣除其中一项
execute if score @s collection_offer matches 2 run scoreboard players set @s collection_attr 5
execute if score @s collection_offer matches 2 run scoreboard players set @s collection_cost 15
#藏品3“金属怀表”：所有属性-2
execute if score @s collection_offer matches 3 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 3 run scoreboard players set @s collection_cost 2
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
#藏品11“琥珀”：所有属性-10
execute if score @s collection_offer matches 11 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 11 run scoreboard players set @s collection_cost 10
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
#藏品25“万能钥匙”：当前最低属性-20
execute if score @s collection_offer matches 25 run scoreboard players set @s collection_attr 8
execute if score @s collection_offer matches 25 run scoreboard players set @s collection_cost 20
#藏品26“世纪名画”：当前最高属性-20
execute if score @s collection_offer matches 26 run scoreboard players set @s collection_attr 5
execute if score @s collection_offer matches 26 run scoreboard players set @s collection_cost 20
#藏品27“王冠”：所有属性-10
execute if score @s collection_offer matches 27 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 27 run scoreboard players set @s collection_cost 10
#藏品28“古生物化石”：所有属性-20
execute if score @s collection_offer matches 28 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 28 run scoreboard players set @s collection_cost 20
#藏品29“皇家项链”：所有属性-10
execute if score @s collection_offer matches 29 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 29 run scoreboard players set @s collection_cost 10
#藏品30“陨石碎片”：所有属性-20
execute if score @s collection_offer matches 30 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 30 run scoreboard players set @s collection_cost 20
#藏品31“玉玺”：当前最高属性-25
execute if score @s collection_offer matches 31 run scoreboard players set @s collection_attr 5
execute if score @s collection_offer matches 31 run scoreboard players set @s collection_cost 25
#藏品32“魔方”：当前最高属性-5
execute if score @s collection_offer matches 32 run scoreboard players set @s collection_attr 5
execute if score @s collection_offer matches 32 run scoreboard players set @s collection_cost 5
#藏品33“小丑帽”：所有属性-2
execute if score @s collection_offer matches 33 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 33 run scoreboard players set @s collection_cost 2
#藏品34“不稳定装置”：所有属性-1
execute if score @s collection_offer matches 34 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 34 run scoreboard players set @s collection_cost 1
#藏品35“多肉植物”：生态-5
execute if score @s collection_offer matches 35 run scoreboard players set @s collection_attr 4
execute if score @s collection_offer matches 35 run scoreboard players set @s collection_cost 5
#藏品36“纸飞机”：民生-5
execute if score @s collection_offer matches 36 run scoreboard players set @s collection_attr 3
execute if score @s collection_offer matches 36 run scoreboard players set @s collection_cost 5
#藏品37“单片眼镜”：经济-5
execute if score @s collection_offer matches 37 run scoreboard players set @s collection_attr 2
execute if score @s collection_offer matches 37 run scoreboard players set @s collection_cost 5
#藏品38“喇叭”：名誉-5
execute if score @s collection_offer matches 38 run scoreboard players set @s collection_attr 1
execute if score @s collection_offer matches 38 run scoreboard players set @s collection_cost 5
#藏品39“名贵的巧克力”：所有属性-2
execute if score @s collection_offer matches 39 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 39 run scoreboard players set @s collection_cost 2
#藏品40“冠军奖杯”：所有属性-3
execute if score @s collection_offer matches 40 run scoreboard players set @s collection_attr 6
execute if score @s collection_offer matches 40 run scoreboard players set @s collection_cost 3
#藏品41“显微镜”：当前最高属性-5
execute if score @s collection_offer matches 41 run scoreboard players set @s collection_attr 5
execute if score @s collection_offer matches 41 run scoreboard players set @s collection_cost 5
#藏品42“天平”：当前最高与最低属性-4
execute if score @s collection_offer matches 42 run scoreboard players set @s collection_attr 7
execute if score @s collection_offer matches 42 run scoreboard players set @s collection_cost 4

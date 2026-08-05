#占位配置：藏品效果、支付属性与价格确定后，在这里同时配置attr与cost，并补充effect函数
scoreboard players set @s collection_attr 0
scoreboard players set @s collection_cost -1
#attr约定：1名誉、2经济、3民生、4生态；当前四件藏品均不预设交易属性
#示例：execute if score @s collection_offer matches 1 run scoreboard players set @s collection_attr 1
#示例：execute if score @s collection_offer matches 1 run scoreboard players set @s collection_cost 5

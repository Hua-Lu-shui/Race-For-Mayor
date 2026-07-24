#记录连续选择生态决策的头衔进度
function rfm:title/decision/ecology
#重置决策属性选择计分板
scoreboard players set @s attribute_choice 0
#从本局尚未抽到过的生态决策中随机抽取
function rfm:task/decision/attribute/roll_ecology

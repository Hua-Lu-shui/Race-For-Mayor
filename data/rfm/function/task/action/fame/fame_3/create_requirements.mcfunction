#将五个随机身份写入函数宏参数，并生成一本六页站位册
kill @e[type=minecraft:text_display,tag=rfm_photo_requirement]
data modify storage rfm:photo_book roles set value {}

execute if score @s photo_target_1 matches 1 run data modify storage rfm:photo_book roles.role_1 set value "rfm.text.552caeb5bd54"
execute if score @s photo_target_1 matches 2 run data modify storage rfm:photo_book roles.role_1 set value "rfm.text.aa5533ff4a9d"
execute if score @s photo_target_1 matches 3 run data modify storage rfm:photo_book roles.role_1 set value "rfm.text.231bf85a0359"
execute if score @s photo_target_1 matches 4 run data modify storage rfm:photo_book roles.role_1 set value "rfm.text.e247a421e43b"
execute if score @s photo_target_1 matches 5 run data modify storage rfm:photo_book roles.role_1 set value "rfm.text.df28029e30f5"
execute if score @s photo_target_1 matches 6 run data modify storage rfm:photo_book roles.role_1 set value "rfm.text.204642695179"
execute if score @s photo_target_1 matches 7 run data modify storage rfm:photo_book roles.role_1 set value "rfm.text.b0c5e5ae06cc"
execute if score @s photo_target_1 matches 8 run data modify storage rfm:photo_book roles.role_1 set value "rfm.text.de98377dd0ad"

execute if score @s photo_target_2 matches 1 run data modify storage rfm:photo_book roles.role_2 set value "rfm.text.552caeb5bd54"
execute if score @s photo_target_2 matches 2 run data modify storage rfm:photo_book roles.role_2 set value "rfm.text.aa5533ff4a9d"
execute if score @s photo_target_2 matches 3 run data modify storage rfm:photo_book roles.role_2 set value "rfm.text.231bf85a0359"
execute if score @s photo_target_2 matches 4 run data modify storage rfm:photo_book roles.role_2 set value "rfm.text.e247a421e43b"
execute if score @s photo_target_2 matches 5 run data modify storage rfm:photo_book roles.role_2 set value "rfm.text.df28029e30f5"
execute if score @s photo_target_2 matches 6 run data modify storage rfm:photo_book roles.role_2 set value "rfm.text.204642695179"
execute if score @s photo_target_2 matches 7 run data modify storage rfm:photo_book roles.role_2 set value "rfm.text.b0c5e5ae06cc"
execute if score @s photo_target_2 matches 8 run data modify storage rfm:photo_book roles.role_2 set value "rfm.text.de98377dd0ad"

execute if score @s photo_target_3 matches 1 run data modify storage rfm:photo_book roles.role_3 set value "rfm.text.552caeb5bd54"
execute if score @s photo_target_3 matches 2 run data modify storage rfm:photo_book roles.role_3 set value "rfm.text.aa5533ff4a9d"
execute if score @s photo_target_3 matches 3 run data modify storage rfm:photo_book roles.role_3 set value "rfm.text.231bf85a0359"
execute if score @s photo_target_3 matches 4 run data modify storage rfm:photo_book roles.role_3 set value "rfm.text.e247a421e43b"
execute if score @s photo_target_3 matches 5 run data modify storage rfm:photo_book roles.role_3 set value "rfm.text.df28029e30f5"
execute if score @s photo_target_3 matches 6 run data modify storage rfm:photo_book roles.role_3 set value "rfm.text.204642695179"
execute if score @s photo_target_3 matches 7 run data modify storage rfm:photo_book roles.role_3 set value "rfm.text.b0c5e5ae06cc"
execute if score @s photo_target_3 matches 8 run data modify storage rfm:photo_book roles.role_3 set value "rfm.text.de98377dd0ad"

execute if score @s photo_target_4 matches 1 run data modify storage rfm:photo_book roles.role_4 set value "rfm.text.552caeb5bd54"
execute if score @s photo_target_4 matches 2 run data modify storage rfm:photo_book roles.role_4 set value "rfm.text.aa5533ff4a9d"
execute if score @s photo_target_4 matches 3 run data modify storage rfm:photo_book roles.role_4 set value "rfm.text.231bf85a0359"
execute if score @s photo_target_4 matches 4 run data modify storage rfm:photo_book roles.role_4 set value "rfm.text.e247a421e43b"
execute if score @s photo_target_4 matches 5 run data modify storage rfm:photo_book roles.role_4 set value "rfm.text.df28029e30f5"
execute if score @s photo_target_4 matches 6 run data modify storage rfm:photo_book roles.role_4 set value "rfm.text.204642695179"
execute if score @s photo_target_4 matches 7 run data modify storage rfm:photo_book roles.role_4 set value "rfm.text.b0c5e5ae06cc"
execute if score @s photo_target_4 matches 8 run data modify storage rfm:photo_book roles.role_4 set value "rfm.text.de98377dd0ad"

execute if score @s photo_target_5 matches 1 run data modify storage rfm:photo_book roles.role_5 set value "rfm.text.552caeb5bd54"
execute if score @s photo_target_5 matches 2 run data modify storage rfm:photo_book roles.role_5 set value "rfm.text.aa5533ff4a9d"
execute if score @s photo_target_5 matches 3 run data modify storage rfm:photo_book roles.role_5 set value "rfm.text.231bf85a0359"
execute if score @s photo_target_5 matches 4 run data modify storage rfm:photo_book roles.role_5 set value "rfm.text.e247a421e43b"
execute if score @s photo_target_5 matches 5 run data modify storage rfm:photo_book roles.role_5 set value "rfm.text.df28029e30f5"
execute if score @s photo_target_5 matches 6 run data modify storage rfm:photo_book roles.role_5 set value "rfm.text.204642695179"
execute if score @s photo_target_5 matches 7 run data modify storage rfm:photo_book roles.role_5 set value "rfm.text.b0c5e5ae06cc"
execute if score @s photo_target_5 matches 8 run data modify storage rfm:photo_book roles.role_5 set value "rfm.text.de98377dd0ad"

function rfm:task/action/fame/fame_3/give_book with storage rfm:photo_book roles

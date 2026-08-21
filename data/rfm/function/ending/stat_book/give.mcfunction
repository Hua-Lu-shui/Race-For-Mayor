#快照当前玩家的房间号；返回大厅后原room会清零，统计书仍用此编号显示玩家名
scoreboard players operation @s stat_book_room = @s room
execute store result storage rfm:stat_book current.room int 1 run scoreboard players get @s room
function rfm:ending/stat_book/prepare_player with storage rfm:stat_book current

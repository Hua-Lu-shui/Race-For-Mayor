advancement grant @s only rfm:title/restart
function rfm:collection/effect/crown
tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"white","bold":true},{"text":" 获得头衔 ","color":"gray"},{"text":"【从头再来】","color":"dark_red","bold":true},{"text":"（最终票数 +100）","color":"gold"}]

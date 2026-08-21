advancement grant @s only rfm:title/no_item
function rfm:collection/effect/crown
tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"white","bold":true},{"text":" 获得头衔 ","color":"gray"},{"text":"【大道至简】","color":"light_purple","bold":true},{"text":"（最终票数 +400）","color":"gold"}]

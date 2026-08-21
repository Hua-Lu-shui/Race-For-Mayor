advancement grant @s only rfm:title/leader_fame
function rfm:collection/effect/crown
tellraw @a[tag=rfm_participant] [{"selector":"@s","color":"white","bold":true},{"text":" 获得头衔 ","color":"gray"},{"text":"【众望所归】","color":"aqua","bold":true},{"text":"（最终票数 +100）","color":"gold"}]

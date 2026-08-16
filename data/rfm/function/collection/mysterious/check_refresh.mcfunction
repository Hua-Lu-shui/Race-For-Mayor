#本函数以提交主动刷新请求的玩家为@s；先清除请求，避免重复执行
scoreboard players set @s collection_refresh 0
function rfm:collection/mysterious/confirm_refresh

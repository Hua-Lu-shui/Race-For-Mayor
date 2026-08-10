#本函数以提交确认请求的玩家为@s；先清除请求，避免重复执行交易
scoreboard players set @s collection_confirm 0
function rfm:collection/trade/confirm

tellraw @s {"text":"【名誉决策】市政开放日","color":"gold","bold":true}
tellraw @s {"text":"市民希望近距离了解市政府运作。开放办公区可以提升透明度，但会占用大量行政资源。","color":"white"}
tellraw @s [{"text":"[激进] 全面开放并直播","color":"red","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/open_day/open_day_a"}}]
tellraw @s [{"text":"[折中] 开放重点窗口","color":"aqua","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/open_day/open_day_b"}}]
tellraw @s [{"text":"[保守] 只发布线上报告","color":"green","clickEvent":{"action":"run_command","value":"/function rfm:task/decision/fame/open_day/open_day_c"}}]

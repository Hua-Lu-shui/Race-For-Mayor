#先清除旧告示牌，确保/reload会刷新已有方块实体中的文字与点击事件
setblock 63 -49 -21 minecraft:air
setblock 63 -49 -19 minecraft:air
setblock 63 -49 -17 minecraft:air
#生成固定文字的设置告示牌；当前设置值通过点击后的聊天提示反馈
setblock 63 -49 -21 minecraft:cherry_wall_sign[facing=west,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"text":"计票动画开关","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 11"}}','""','""']}}
setblock 63 -49 -19 minecraft:cherry_wall_sign[facing=west,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"text":"决策倒计时时长","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 12"}}','""','""']}}
setblock 63 -49 -17 minecraft:cherry_wall_sign[facing=west,waterlogged=false]{front_text:{has_glowing_text:1b,messages:['""','{"text":"藏品自动刷新开关","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/trigger lobby_action set 14"}}','""','""']}}

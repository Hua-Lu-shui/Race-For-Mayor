#展示名誉行动任务5的人物背景并搭建应援场地
tellraw @a[tag=rfm_participant] [{"text":"【人物背景】","color":"gold","bold":true},{"selector":"@s","color":"white"},{"text":" 的竞选活动吸引了大批市民，支持者准备向场内抛送鲜花，但人群中也混入了投掷鸡蛋的抗议者。","color":"white"}]
function rfm:task/action/fame/fame_5/start

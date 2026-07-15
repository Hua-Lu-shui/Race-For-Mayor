tellraw @a {"text":"企业代表·维克托提出了一个问题：","color":"yellow","bold":true}
execute if score @s negotiation_question matches 1 run tellraw @a {"text":"我们一直招聘不到足够的软件工程师，项目进度受到影响。","color":"white"}
execute if score @s negotiation_question matches 2 run tellraw @a {"text":"核心研发团队缺少专业人才，短期内很难扩大规模。","color":"white"}
execute if score @s negotiation_question matches 3 run tellraw @a {"text":"员工技能跟不上生产升级，需要更完善的培训和人才服务。","color":"white"}
execute if score @s negotiation_question matches 4 run tellraw @a {"text":"工厂距离货运站太远，产品运往外地需要很长时间。","color":"white"}
execute if score @s negotiation_question matches 5 run tellraw @a {"text":"原材料运输成本过高，已经影响了产品竞争力。","color":"white"}
execute if score @s negotiation_question matches 6 run tellraw @a {"text":"园区周边道路经常拥堵，客户和货车进出都很不方便。","color":"white"}
execute if score @s negotiation_question matches 7 run tellraw @a {"text":"企业刚刚起步，当前税费压力让现金流十分紧张。","color":"white"}
execute if score @s negotiation_question matches 8 run tellraw @a {"text":"我们希望把利润投入研发，但现阶段经营税负影响了投入计划。","color":"white"}
execute if score @s negotiation_question matches 9 run tellraw @a {"text":"新项目需要大量前期资金，希望落户初期能够减轻税费负担。","color":"white"}
tellraw @a {"text":"请选择一项扶持方案。","color":"gray"}

#重置本回合行动任务状态
#第2回合起，在清空当前标记前保存上一回合的行动玩家状态
execute if score #round round matches 2.. as @a[tag=rfm_participant] run scoreboard players operation @s previous_action_player = @s action_player
scoreboard players set @a[tag=rfm_participant] action_player 0
scoreboard players set @a[tag=rfm_participant] action_task 0
scoreboard players set @a[tag=rfm_participant] action_mode 0
scoreboard players set @a[tag=rfm_participant] action_role 0
scoreboard players set @a[tag=rfm_participant] action_order 0
scoreboard players set @a[tag=rfm_participant] decision_task 0
scoreboard players set @a[tag=rfm_participant] attribute_choice 0
scoreboard players set @a[tag=rfm_participant] action_attribute_choice 0
scoreboard players set @a[tag=rfm_participant] action_attribute_option_1 0
scoreboard players set @a[tag=rfm_participant] action_attribute_option_2 0
scoreboard players set @a[tag=rfm_participant] action_attribute_option_3 0
scoreboard players set @a[tag=rfm_participant] action_attribute_missing 0
#清除上一次行动任务可能残留的运行状态，避免选中方向后提前启动或传送
scoreboard players set #current_action action_order 0
scoreboard players set @a[tag=rfm_participant] speech_state 0
scoreboard players set @a[tag=rfm_participant] visit_state 0
scoreboard players set @a[tag=rfm_participant] photo_state 0
scoreboard players set @a[tag=rfm_participant] qa_state 0
scoreboard players set @a[tag=rfm_participant] cheer_state 0
scoreboard players set @a[tag=rfm_participant] market_state 0
scoreboard players set @a[tag=rfm_participant] negotiation_state 0
scoreboard players set @a[tag=rfm_participant] audit_state 0
scoreboard players set @a[tag=rfm_participant] supply_state 0
scoreboard players set @a[tag=rfm_participant] employment_state 0
scoreboard players set @a[tag=rfm_participant] hospital_state 0
scoreboard players set @a[tag=rfm_participant] fitness_state 0
scoreboard players set @a[tag=rfm_participant] exercise_state 0
scoreboard players set @a[tag=rfm_participant] bus_state 0
scoreboard players set @a[tag=rfm_participant] cooking_state 0
scoreboard players set @a[tag=rfm_participant] emission_state 0
scoreboard players set @a[tag=rfm_participant] sample_state 0
scoreboard players set @a[tag=rfm_participant] park_state 0
scoreboard players set @a[tag=rfm_participant] trash_state 0
scoreboard players set @a[tag=rfm_participant] energy_state 0

#统计当前玩家人数并决定行动玩家数量
execute store result score #player_count player_count run execute if entity @a[tag=rfm_participant]
scoreboard players set #action_quota action_quota 0
execute if score #player_count player_count matches 2..5 run scoreboard players set #action_quota action_quota 1
execute if score #player_count player_count matches 6..8 run scoreboard players set #action_quota action_quota 2

#没有本局记录的新玩家从0次开始；优先在被抽中次数最少的玩家中随机挑选
scoreboard players add @a[tag=rfm_participant] action_draw_count 0
function rfm:task/action/select_fair_players

#将本回合行动玩家统一设为单人任务
function rfm:task/action/select_mode
#为行动玩家分配执行顺序
function rfm:task/action/sequence/assign_order

tellraw @a[tag=rfm_participant,scores={action_role=1}] [{"text":"你是本回合","color":"white"},{"text":"行动玩家","color":"#67D5FF","bold":true},{"text":"，请从随机出现的三个属性中选择一个","color":"white"},{"text":"行动方向","color":"#67D5FF","bold":true},{"text":"。","color":"white"}]

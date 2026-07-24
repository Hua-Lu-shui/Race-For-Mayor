#重置本轮行动任务状态
scoreboard players set @a action_player 0
scoreboard players set @a action_task 0
scoreboard players set @a action_mode 0
scoreboard players set @a action_role 0
scoreboard players set @a action_order 0
scoreboard players set @a decision_task 0
scoreboard players set @a attribute_choice 0
scoreboard players set @a action_attribute_choice 0
scoreboard players set @a action_attribute_option_1 0
scoreboard players set @a action_attribute_option_2 0
scoreboard players set @a action_attribute_option_3 0
scoreboard players set @a action_attribute_missing 0
#清除上一次行动任务可能残留的运行状态，避免选中方向后提前启动或传送
scoreboard players set #current_action action_order 0
scoreboard players set @a speech_state 0
scoreboard players set @a visit_state 0
scoreboard players set @a photo_state 0
scoreboard players set @a qa_state 0
scoreboard players set @a cheer_state 0
scoreboard players set @a market_state 0
scoreboard players set @a negotiation_state 0
scoreboard players set @a audit_state 0
scoreboard players set @a supply_state 0
scoreboard players set @a employment_state 0
scoreboard players set @a hospital_state 0
scoreboard players set @a fitness_state 0
scoreboard players set @a exercise_state 0
scoreboard players set @a bus_state 0
scoreboard players set @a manhole_state 0
scoreboard players set @a emission_state 0
scoreboard players set @a sample_state 0
scoreboard players set @a park_state 0
scoreboard players set @a trash_state 0
scoreboard players set @a energy_state 0

#统计当前玩家人数并决定行动玩家数量
execute store result score #player_count player_count run execute if entity @a
scoreboard players set #action_quota action_quota 0
execute if score #player_count player_count matches ..4 run scoreboard players set #action_quota action_quota 1
execute if score #player_count player_count matches 5..8 run scoreboard players set #action_quota action_quota 2

#没有本局记录的新玩家从0次开始；优先在被抽中次数最少的玩家中随机挑选
scoreboard players add @a action_draw_count 0
function rfm:task/action/select_fair_players

#将本轮行动玩家统一设为单人任务
function rfm:task/action/select_mode
#为行动玩家分配执行顺序
function rfm:task/action/sequence/assign_order

tellraw @a[scores={action_role=1}] {"text":"你是本轮行动玩家，请从随机出现的三个属性中选择一个行动方向。","color":"gold","bold":true}

#若随机结果已在本局出现，则立即重新抽取
execute if score #current event matches 1 if score #event_1 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 2 if score #event_2 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 3 if score #event_3 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 4 if score #event_4 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 5 if score #event_5 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 6 if score #event_6 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 7 if score #event_7 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 8 if score #event_8 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 9 if score #event_9 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 10 if score #event_10 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 11 if score #event_11 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 12 if score #event_12 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 13 if score #event_13 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 14 if score #event_14 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 15 if score #event_15 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 16 if score #event_16 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 17 if score #event_17 event_used matches 1 run return run function rfm:event/generate
execute if score #current event matches 18 if score #event_18 event_used matches 1 run return run function rfm:event/generate

#执行本次抽中的事件
execute if score #current event matches 1 run function rfm:event/events/01_city_reputation_poll
execute if score #current event matches 2 run function rfm:event/events/02_investment_week
execute if score #current event matches 3 run function rfm:event/events/03_public_service_review
execute if score #current event matches 4 run function rfm:event/events/04_green_city_initiative
execute if score #current event matches 5 run function rfm:event/events/05_citywide_trust_crisis
execute if score #current event matches 6 run function rfm:event/events/06_economic_shock
execute if score #current event matches 7 run function rfm:event/events/07_public_health_alert
execute if score #current event matches 8 run function rfm:event/events/08_extreme_weather_warning
execute if score #current event matches 9 run function rfm:event/events/09_city_arts_festival
execute if score #current event matches 10 run function rfm:event/events/10_business_summit
execute if score #current event matches 11 run function rfm:event/events/11_community_co_governance
execute if score #current event matches 12 run function rfm:event/events/12_city_think_tank_forum
execute if score #current event matches 13 run function rfm:event/events/13_public_service_award
execute if score #current event matches 14 run function rfm:event/events/14_endorsement_controversy
execute if score #current event matches 15 run function rfm:event/events/15_financial_audit_scandal
execute if score #current event matches 16 run function rfm:event/events/16_community_coordination_failure
execute if score #current event matches 17 run function rfm:event/events/17_research_controversy
execute if score #current event matches 18 run function rfm:event/events/18_administrative_accountability

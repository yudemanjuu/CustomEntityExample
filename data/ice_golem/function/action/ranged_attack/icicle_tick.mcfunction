#> ice_golem:action/ranged_attack/icicle_tick
# つらら(?)のtick処理

# 常に
    particle snowflake ~ ~0.1 ~ 1 0 1 0.05 50

# 21
    execute if score @s IcicleTimer matches 21 run tag @s add This
    execute if score @s IcicleTimer matches 21 positioned ~-1.5 ~ ~-1.5 run tag @e[dx=2,dz=2,dy=4,type=!#ice_golem:no_damage] add Attacked
    execute if score @s IcicleTimer matches 21 as @e[tag=Attacked] run damage @s 7 freeze by @n[tag=IceGolem] from @n[tag=IceGolem]
    execute if score @s IcicleTimer matches 21 run tag @s remove This
    execute if score @s IcicleTimer matches 21 run tag @e[tag=Attacked] remove Attacked
    execute if score @s IcicleTimer matches 21 run function ice_golem:action/ranged_attack/icicle_particle
    execute if score @s IcicleTimer matches 21 run kill @s

# タイマー
    scoreboard players add @s IcicleTimer 1
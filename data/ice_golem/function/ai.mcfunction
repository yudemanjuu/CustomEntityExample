#> ice_golem:ai
# ターゲットとの距離に応じて行動を選ぶ

# 自分にタグ付け
    tag @s add This

# 攻撃
    execute on target at @s if entity @n[tag=This,distance=..3.5] as @n[tag=This] run function ice_golem:action/attack/start

# 遠距離攻撃
    execute on target at @s if entity @n[tag=This,distance=10..16] as @n[tag=This] run function ice_golem:action/ranged_attack/start

# reset
    tag @s remove This
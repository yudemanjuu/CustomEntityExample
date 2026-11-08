#> ice_golem:action/tick
# 行動のtick処理を分岐

# 待機
    execute if score @s ActionID matches 1 run function ice_golem:action/idle/tick

# 歩行
    execute if score @s ActionID matches 2 run function ice_golem:action/walk/tick

# 攻撃
    execute if score @s ActionID matches 3 run function ice_golem:action/attack/tick

# 遠距離攻撃
    execute if score @s ActionID matches 4 run function ice_golem:action/ranged_attack/tick

# 死亡
    execute if score @s ActionID matches 100 run function ice_golem:action/death/tick

# タイマー
    scoreboard players add @s ActionTimer 1
#> ice_golem:action/idle/tick
# 待機行動tick処理

# 41、行動終了
    execute if score @s ActionTimer matches 41 run scoreboard players set @s ActionID 0

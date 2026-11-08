#> ice_golem:action/walk/tick
# 歩行行動tick処理

# 12、行動終了
    execute if score @s ActionTimer matches 12 run scoreboard players set @s ActionID 0
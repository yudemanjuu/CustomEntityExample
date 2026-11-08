#> ice_golem:action/ranged_attack/tick
# 遠距離攻撃行動tick処理

# 1、動かなくする
    execute if score @s ActionTimer matches 1 run attribute @s movement_speed base set 0.01

# 15、marker召喚
    execute if score @s ActionTimer matches 15 on target at @s run summon marker ~ ~ ~ {CustomName:"Icicle"}

# 60、行動終了
    execute if score @s ActionTimer matches 60 run scoreboard players set @s ActionID 0
    execute if score @s ActionTimer matches 60 run attribute @s movement_speed base set 0.25

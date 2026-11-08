#> core:tick
# 毎ティックサーバーが実行

# IceGolemのtick処理
    execute as @e[type=zombie,tag=IceGolem,tag=AIEntity] at @s run function ice_golem:tick
    # Icicleのtick処理
        execute as @e[type=marker,name=Icicle] at @s run function ice_golem:action/ranged_attack/icicle_tick

# ゾンビが装備していたボタンを消去
    kill @e[type=item,name=TempItem]
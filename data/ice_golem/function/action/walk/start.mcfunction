#> ice_golem:action/walk/start
# 歩行行動スタート

# スコアを設定
    scoreboard players set @s ActionID 2
    scoreboard players set @s ActionTimer 1

# AJModelをアニメーションさせる
    execute as @n[tag=ThisAJModel] run function aj:ice_golem/animations/walk/play
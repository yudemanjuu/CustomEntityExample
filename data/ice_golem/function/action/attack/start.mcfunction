#> ice_golem:action/attack/start
# 攻撃行動スタート

# スコアを設定
    scoreboard players set @s ActionID 3
    scoreboard players set @s ActionTimer 1

# AJModelをアニメーションさせる
    execute as @n[tag=ThisAJModel] run function aj:ice_golem/animations/attack/play
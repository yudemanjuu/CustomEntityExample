#> ice_golem:link
# AJModelとAIエンティティの結び付け
# 実行者はAIエンティティ
# AIエンティティとAJModelにはSummonタグが付いている

#loot式
    forceload add 100000 0 100000 0
    # 一時的にシェルカーボックスを設置
        setblock 100000 300 0 shulker_box
    # AJModelのrootの16進数uuidをAIエンティティのdata.LinkedUUIDに代入
    execute as @n[tag=AJModel,tag=Summon] in overworld run loot replace block 100000 300 0 container.0 loot {pools:[{rolls:1,entries:[{type:"item",name:"debug_stick",modifier:[{type:"set_name","entity":"this",name:{selector:"@s"}}]}]}]}
    execute in overworld run data modify storage ice_golem:temp UUID set from block 100000 300 0 Items[0].components."minecraft:custom_name"
    data modify entity @s data.LinkedUUID set from storage ice_golem:temp UUID.insertion

# reset
    setblock 100000 300 0 air replace
    data remove storage ice_golem:temp UUID
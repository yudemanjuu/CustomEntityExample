#> ice_golem:summon
# ice_golemを召喚

# ajmodelを召喚
    #function aj:ice_golem/summon {args:{}}

# AIEntityを召喚
    function ice_golem:ai_summon

# AJmodelをAIに結び付け
    execute as @e[tag=AIEntity,tag=Summon] run function ice_golem:link

# init
    data modify entity @n[tag=AIEntity,tag=Summon] CustomName set value "氷ゴーレム"

# reset
    tag @e[tag=Summon] remove Summon
# BattleHandlers::SpecialAttackCalcGlobalAbility.add(:VESSELOFRUIN,
#     proc { |ability, user, _battle, spAtkMult|
#       puts "GOT HERE!!!"
#       next if user.hasActiveAbility?(:VESSELOFRUIN)
#       puts "GOT HERE 2!!!"
#       spAtkMult *= 0.75
#       next spAtkMult
#     }
# )

BattleHandlers::SpecialAttackCalcGlobalAbility.add(:VESSELOFRUIN,
  proc { |ability, user, battle, spAtkMult|

    # Apply to all if at least one has ability. TODO might not be necessary to check this
    found = false
    battle.eachBattler do |b|
      if b.hasActiveAbility?(:VESSELOFRUIN)
        found = true
        break
      end
    end

    if found
      # Apply only to battlers who DON'T have the ability
      unless user.hasActiveAbility?(:VESSELOFRUIN)
        spAtkMult *= 0.75
      end
    end

    next spAtkMult
  }
)
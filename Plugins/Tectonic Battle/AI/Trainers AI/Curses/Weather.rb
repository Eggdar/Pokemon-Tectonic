# SANDSTORM
PokeBattle_Battle::BattleStartApplyCurse.add(:CURSE_SANDSTORM,
    proc { |curse_policy, battle, curses_array|
        battle.amuletActivates(
            _INTL("An Endless Cycle of Blindness\nThe Unstopable Force of a Sturdy Spirit"),
            _INTL("The battle begins with a never-ending sandstorm.")
        )
        curses_array.push(curse_policy)
        battle.pbStartWeather(nil, :Sandstorm, -1, true, false, nil, :BROCK)
        next curses_array
    }
)

PokeBattle_AI::TrainerSendsOutPokemonDialogue.add(:BROCK,
  proc { |_policy, battler, trainer_speaking, dialogue_array|
      if battler.battle.pbAbleCount(battler.index) == battler.battle.sideSizes[1] && !trainer_speaking.policyStates[:LastPokemonComment]
          dialogue_array.push(_INTL("It's not over yet, my final pokemon will stand strong as rock!"))
          trainer_speaking.policyStates[:LastPokemonComment] = true
      end
      next dialogue_array
  }
)
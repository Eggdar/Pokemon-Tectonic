ItemHandlers::UseFromBag.add(:REMOTEPC,proc { |item|
  next 2
})


ItemHandlers::UseInField.add(:REMOTEPC,proc { |item|
  pbPokeCenterPC()
})
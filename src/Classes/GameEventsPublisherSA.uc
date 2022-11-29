class GameEventsPublisherSA extends Actor;

function PostBeginPlay()
{
  if (DeathMatchPlus(Level.Game) != None)
  {
    Log("ServerActor, Spawning and adding Mutator...", 'GameEvents');
    Level.Game.BaseMutator.AddMutator(Level.Game.Spawn(class'GameEventsMutator'));
  }
  Destroy();
}

defaultproperties
{
     bHidden=True
}
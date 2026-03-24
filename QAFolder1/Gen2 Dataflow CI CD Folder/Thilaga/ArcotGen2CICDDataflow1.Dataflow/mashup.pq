[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared Megaquery = let
  Source = PowerPlatform.Dataflows([]),
  #"Navigation 1" = Source{[Id = "Workspaces"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[workspaceId = "30dba79c-b85f-43a9-9402-ae20f426763a"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[dataflowId = "ac0de429-5e4f-48af-9853-18c4f8c1ad5a"]}[Data]
in
  #"Navigation 3";

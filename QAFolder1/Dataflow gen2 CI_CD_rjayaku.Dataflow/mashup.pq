[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared #"OnshoreGen2Dataflow2(noCICD)" = let
  Source = PowerPlatform.Dataflows([]),
  #"Navigation 1" = Source{[Id = "Workspaces"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[workspaceId = "c84802e7-7ada-4a04-bb27-2b009f21e8fa"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[dataflowId = "9a280d40-c5b2-4e4a-80d1-3452a2bd5148"]}[Data]
in
  #"Navigation 3";

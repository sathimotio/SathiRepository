[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared Megaquery = let
  Source = PowerPlatform.Dataflows([]),
  #"Navigation 1" = Source{[Id = "Workspaces"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[workspaceId = "672900e2-abe7-4ff6-9d6a-a2ae5728bb9a"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[dataflowId = "0b5315b7-383c-4fc1-ba7c-17ee0fdd4c88"]}[Data]
in
  #"Navigation 3";

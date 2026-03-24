[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared #"Livestock and Meat Dataflow" = let
  Source = PowerPlatform.Dataflows([]),
  #"Navigation 1" = Source{[Id = "Workspaces"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[workspaceId = "0ea379e7-749f-400d-b028-cb8f478d4021"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[dataflowId = "679a3f41-f0c8-46b9-8da5-ee8d7b84038c"]}[Data]
in
  #"Navigation 3";

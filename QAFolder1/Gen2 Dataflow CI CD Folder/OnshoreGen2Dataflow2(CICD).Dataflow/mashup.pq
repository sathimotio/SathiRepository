[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared #"Livestock and poultry live and dressed weights (pounds) (SlaughterWeights)" = let
  Source = PowerPlatform.Dataflows([]),
  #"Navigation 1" = Source{[Id = "Workspaces"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[workspaceId = "65e5810d-07ca-4cff-8b51-c73005ecdf67"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[dataflowId = "e85e4491-314b-42e3-8e2a-0ce05993fed5"]}[Data],
  #"Navigation 4" = #"Navigation 3"{[entity = "Livestock and poultry live and dressed weights (pounds) (SlaughterWeights)", version = ""]}[Data]
in
  #"Navigation 4";

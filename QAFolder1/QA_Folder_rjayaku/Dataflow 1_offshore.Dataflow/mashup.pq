[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared #"Livestock and Meat Dataflow" = let
  Source = PowerPlatform.Dataflows([]),
  #"Navigation 1" = Source{[Id = "Workspaces"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[workspaceId = "9cac6b1c-277a-4461-a2e5-fd025a7aeb11"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[dataflowId = "a1d7f6c5-1eec-487d-9351-fc12767ee23c"]}[Data],
  #"Filtered rows" = Table.SelectRows(#"Navigation 3", each ([entity] <> "Livestock and poultry live and dressed weights (pounds) (SlaughterWeights)" and [entity] <> "Livestock and poultry slaughter (1,000 head) (SlaughterCounts)" and [entity] <> "Red meat and poultry production (million pounds) (RedMeatPoultry_Prod)"))
in
  #"Filtered rows";

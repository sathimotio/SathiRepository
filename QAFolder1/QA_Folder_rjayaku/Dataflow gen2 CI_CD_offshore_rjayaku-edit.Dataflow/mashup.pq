[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared #"Dataflow gen2 CI_CD_simply_rjayaku" = let
  Source = PowerPlatform.Dataflows([]),
  #"Navigation 1" = Source{[Id = "Workspaces"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[workspaceId = "c84802e7-7ada-4a04-bb27-2b009f21e8fa"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[dataflowId = "47554114-a5b8-4c1f-817a-e4b12c39f5a0"]}[Data],
  #"Filtered rows" = Table.SelectRows(#"Navigation 3", each ([entity] <> "OnshoreGen2Dataflow2(noCICD)"))
in
  #"Filtered rows";

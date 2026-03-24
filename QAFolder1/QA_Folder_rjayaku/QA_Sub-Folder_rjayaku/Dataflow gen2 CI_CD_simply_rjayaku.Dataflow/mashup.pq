[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared #"Dataflow gen2 CI_CD_simply_rjayaku_edit" = let
  Source = PowerPlatform.Dataflows([]),
  #"Navigation 1" = Source{[Id = "Workspaces"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[workspaceId = "f3780c43-9b0e-439b-9866-4f474e6dc222"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[dataflowId = "258e106c-24cb-4659-be78-edc9a11eb78c"]}[Data]
in
  #"Navigation 3";

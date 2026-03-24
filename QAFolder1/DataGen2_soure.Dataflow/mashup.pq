[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared #"Livestock and Meat Dataflow_edit" = let
  Source = PowerPlatform.Dataflows([]),
  #"Navigation 1" = Source{[Id = "Workspaces"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[workspaceId = "2a5d69b8-eef3-4d80-a1b1-ab72753e0c61"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[dataflowId = "b494a210-0b38-4223-977b-5feb253f3873"]}[Data]
in
  #"Navigation 3";

[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared Sheet1 = let
  Source = GoogleSheets.Contents("https://docs.google.com/spreadsheets/d/1zXJv-zc607Bse6Hb9TMjaCfTeDi5kxpTw9Wz4j5GMy8/edit?gid=0#gid=0"),
  #"Navigation 1" = Source{[name = "Sheet1", ItemKind = "Table"]}[Data]
in
  #"Navigation 1";

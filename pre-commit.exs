#!/usr/bin/bash elixir

lines_to_discard = [
  "DB",
  "_URL",
  "_URI",
  "GRAPHQL",
  "GCP",
  "PORT",
  "BREYTA",
  "BIG_QUERY",
  "GOOGLE"
]

should_discard = fn line ->
  Enum.any?(lines_to_discard, fn discard -> String.contains?(line, discard) end)
end

{:ok, file} = File.read("settings.json")

filtered =
  file
  |> String.split("\n")
  |> Enum.reject(&should_discard.(&1))
  |> Enum.join("\n")

File.write("settings.json", filtered)

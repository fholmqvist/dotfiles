#!/usr/local/bin/janet
(def lines
  (->> (slurp "settings.json")
       (string/split "\n")
       (filter (fn [line] (and (not (string/find "DB" line))
                               (not (string/find "_URL" line))
                               (not (string/find "GRAPHQL" line))
                               (not (string/find "GCP" line))
                               (not (string/find "PORT" line))
                               (not (string/find "BREYTA" line)))))))

(spit "settings.json" (string/join lines "\n"))

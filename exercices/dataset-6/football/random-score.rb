#!/usr/bin/env ruby

require 'csv'
require 'pry'

teams = CSV.parse(File.read("teams.csv")).flatten

# Generate random scores for each team
# Each team has a random number of goals scored
# Each team plays against another team 2 times
# Store the results in a CSV file called random-score-#{team}.csv

teams.each do |team|
  opponents = teams - [team]
  scores = opponents.map do |opponent|
    team_score = rand(0..5)
    opponent_score = rand(0..5)
    [team, opponent, team_score, opponent_score]
  end
  File.write("data-2/dataset-6-random-score-#{team}.csv", scores.map(&:to_csv).join)
end

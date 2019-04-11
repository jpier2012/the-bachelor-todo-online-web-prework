require 'pry'
require './lib/data.rb'

#####
#####

def get_first_name_of_season_winner(data, season)
  winner_first_name = ""
  binding.pry
  data[season].each {|season, contestant|
  # season = season
    contestant.each {|name, stats|
      if stats["status"] == "Winner"
        winner_first_name == stats["name"].split(" ")[0]
      end
    }
  }
  winner_first_name
end

puts get_first_name_of_season_winner(data_set,"season 19")

#####
#####


def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end

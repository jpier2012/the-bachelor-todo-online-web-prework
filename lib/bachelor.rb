require 'pry'
require './lib/data.rb'

#####
#####

def get_first_name_of_season_winner(data, season)
  winner_first_name = ""
  data.each {|season_name, contestants|
  #binding.pry
  if season.to_sym == season_name
    contestants.each {|person|
      binding.pry
      if person["status"] == "Winner"
        winner_first_name == person["name"].split(" ")[0]
      end
    }
  end
  }
  winner_first_name
  #binding.pry
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

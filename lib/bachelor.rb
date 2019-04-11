require 'pry'
require './lib/data.rb'

#####
#####

def get_first_name_of_season_winner(data, season)
  winner_first_name = ""

  data[season.to_sym].each {|contestants|
      contestants.each {|person|
        if person[:"status"] == "Winner"
          winner_first_name = person[:"name"].split(" ")[0]
          #binding.pry
        end
      }
  }

  winner_first_name
end

puts get_first_name_of_season_winner(data_set,"season 10")

#####
#####


def get_contestant_name(data, occupation)
# returns the name of the women with a certain occupation
  name = ""

  data.each {|season_name, contestants|
      contestants.each {|person|
        if person[:"occupation"] == occupation
          name = person[:"name"].split(" ")[0]
        end
      }
  }

  name
end

#puts get_contestant_name(data_set, "Chiropractic Assistant")

#####
#####

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end

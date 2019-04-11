require 'pry'

#####
#####

def get_first_name_of_season_winner(data_set, season)
  winner_first_name = ""

  data_set.each {|season_name, contestants|
    if season == season_name
      contestants.each {|person|
        if person["status"] == "Winner"
          winner_first_name = person["name"].split(" ").first
          #binding.pry
        end
      }
    end
  }
  #binding.pry
  winner_first_name
end

#####
#####

def get_contestant_name(data, occupation)
# returns the name of the women with a certain occupation
  name = ""

  data_set.each {|season_name, contestants|
    contestants.each {|person|
      if person["occupation"] == occupation
        name = person["name"]
        #binding.pry
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

# Write your code here!
def game_hash 
  game_hash = {
  	home: {
  	  team_name: "Brooklyn Nets", 
  	  colors: ["Black", "White"], 
  	  players: {
  	    "Alan Anderson" => {
  	      number: 0, 
  	      shoe: 16, 
  	      points: 22, 
  	      rebounds: 12, 
  	      assists: 12, 
  	      steals: 3, 
  	      blocks: 1, 
  	      slam_dunks: 1
  	    }, 
        "Reggie Evans" => {
          number: 30, 
          shoe: 14, 
          points: 12, 
          rebounds: 12, 
          assists: 12, 
          steals: 12, 
          blocks: 12, 
          slam_dunks: 7
        },
  	    "Brook Lopez" => {
  	      number: 11, 
  	      shoe: 17, 
  	      points: 17, 
  	      rebounds: 19, 
  	      assists: 10, 
  	      steals: 3, 
  	      blocks: 1, 
  	      slam_dunks: 15
  	    },
  	    "Mason Plumlee" => {
  	      number: 1, 
  	      shoe: 19, 
  	      points: 26, 
  	      rebounds: 12, 
  	      assists: 6, 
  	      steals: 3, 
  	      blocks: 8, 
  	      slam_dunks: 5
  	    },
  	    "Jason Terry" => {
  	      number: 31, 
  	      shoe: 15, 
  	      points: 19, 
  	      rebounds: 2, 
  	      assists: 2, 
  	      steals: 4, 
  	      blocks: 11, 
  	      slam_dunks: 1
  	    }
  	  }
  	},
    away: {
      team_name: "Charlotte Hornets", 
      colors: ["Turquoise", "Purple"], 
      players: {
       	"Jeff Adrien" => {
       	  number: 4, 
       	  shoe: 18, 
       	  points: 10, 
       	  rebounds: 1, 
       	  assists: 1, 
       	  steals: 2, 
       	  blocks: 7, 
       	  slam_dunks: 2
       	}, 
  	    "Bismack Biyombo" => {
  	      number: 0, 
  	      shoe: 16, 
  	      points: 12, 
  	      rebounds: 4, 
  	      assists: 7, 
  	      steals: 7, 
  	      blocks: 15, 
  	      slam_dunks: 10
  	    }, 
        "DeSagna Diop" => {
          number: 2, 
          shoe: 14, 
          points: 24, 
          rebounds: 12, 
          assists: 12, 
          steals: 4, 
          blocks: 5, 
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8, 
          shoe: 15, 
          points: 33, 
          rebounds: 3, 
          assists: 2, 
          steals: 1, 
          blocks: 1, 
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33, 
          shoe: 15, 
          points: 6, 
          rebounds: 12, 
          assists: 12, 
          steals: 22, 
          blocks: 5, 
          slam_dunks: 12
        }
      }
    }
  }
end

def home_team_name
  game_hash[:home][:team_name]
end

def num_points_scored player_name
  game_hash.each do |team, team_info|
    game_hash[team][:players].each do |player, stats|
      if player == player_name
      	return stats[:points]
      end
    end
  end
end

def shoe_size player_name
  game_hash.each do |team, team_info|
    game_hash[team][:players].each do |player, stats|
      if player == player_name
      	return stats[:shoe]
      end
    end
  end
end

def team_colors team
  game_hash.each do |location, team_info|
  	team_info.each do |info, attributes|
  	  if attributes == team
  	  	return team_info[:colors]
  	  end
  	end
  end
end

def team_names
  team_array = []
  game_hash.each do |location, team_info|
    team_array.push(team_info[:team_name])
  end
  team_array
end

def player_numbers team
  jersey_nums = []
  game_hash.each do |location, team_info|
  	if team_info[:team_name] == team
  	  team_info[:players].each do |player, stats|
  	    jersey_nums.push(stats[:number])
  	  end
  	end
  end
  jersey_nums
end

def player_stats player_name
  game_hash.each do |location, team_info|
  	if team_info[:players].include?(player_name)
  	  return team_info[:players][player_name]
  	end
  end
end

def big_shoe_rebounds
  max = 0
  rebounds = 0
  game_hash.each do |location, team_info|
  	team_info[:players].each do |player, stats|
  	  if stats[:shoe] > max
  	  	max = stats[:shoe]
  	  	rebounds = stats[:rebounds]
  	  end
  	end
  end
  rebounds
end

def most_points_scored 
  max = 0
  most_points = ""
  game_hash.each do |location, team_info|
  	team_info[:players].each do |player, stats|
  	  if stats[:points] > max
  	  	max = stats[:points]
        most_points = player
      end
    end
  end
end

def winning_team 
  home = 0
  away = 0
  game_hash[:home][:players].each do |player, stats|
  	home += stats[:points]
  end
  game_hash[:away][:players].each do |player, stats|
  	away += stats[:points]
  end
  if home > away
  	home
  else
  	away
  end
end

def player_with_the_longest_name
  max = 0
  player_name = ""
  game_hash.each do |location, team_info|
  	location[:players] do |player|
  	  if player.size > max
  	    max = player.size
  	    player_name = player
      end
  	end
  end
  player
end

def long_name_steals_a_ton?
  game_hash.each do |team, team_info|
    game_hash[team][:players].each do |player, stats|
      if player == player_with_the_longest_name
      	return stats[:shoe]
      end
    end
  end
end






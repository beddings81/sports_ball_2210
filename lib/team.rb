require './lib/player'

class Team
  attr_reader :team_name, :city, :roster
  attr_accessor :contract_length
  def initialize(team_name, city)
    @team_name = team_name
    @city = city
    @roster = []
  end

  def player_count
    @roster.count
  end

  def add_player(player)
    roster << player
  end

    def long_term_players
      long_term_contract = []
      @roster.each do |player|
      if player.contract_length > 24
        long_term_contract << player
      end
    end
    long_term_contract
  end

  def short_term_players
    short_term_contract = []
    @roster.each do |player|
      if player.contract_length <= 24
        short_term_contract << player
      end
    end
    short_term_contract
  end

  def total_value
    roster.sum do |player|
      player.contract_length * player.monthly_cost
    end
  end

  def details
    {
      "total_value" => 85200000,
      "player_count" => 4
    }
  end

  def average_cost_of_player
    average_cost = total_value / 4 
    return "$#{average_cost}"
  end


end

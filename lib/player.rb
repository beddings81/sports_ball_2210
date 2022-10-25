class Player
  attr_reader :player, :monthly_cost, :contract_length, :first_and_last_name, :nickname

  def initialize(first_and_last_name, monthly_cost, contract_length)
  @player = player
  @first_and_last_name = first_and_last_name
  @monthly_cost = monthly_cost
  @contract_length = contract_length
  @nickname = nil
  end

  def first_name
    first_and_last_name.split.first
  end

  def last_name
    first_and_last_name.split.last
  end

  def total_cost
    monthly_cost * contract_length
  end


  def set_nickname!(nickname)
    @nickname = nickname
  end


end
